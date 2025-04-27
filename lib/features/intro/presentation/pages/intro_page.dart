import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart'; // Import go_router

import '../bloc/intro_bloc.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    // Dispatch LoadIntro when the page is created
    context.read<IntroBloc>().add(LoadIntro());
  }

  void _navigateToNextScreen() {
    // Implement actual navigation to the next screen (e.g., home or login)
    // Example using go_router:
    // Check if the context is still valid before navigating
    if (mounted) {
       GoRouter.of(context).go('/login'); // Example: Navigate to login page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
        actions: [
          BlocBuilder<IntroBloc, IntroState>(
            builder: (context, state) {
              // Show Skip button only in IntroLoaded state and not on the last page
              if (state is IntroLoaded && state.currentPageIndex < state.pages.length - 1) {
                return TextButton(
                  onPressed: () {
                    context.read<IntroBloc>().add(SkipIntro());
                  },
                  child: const Text('Skip', ),
                );
              }
              return Container(); // Hide button otherwise
            },
          ),
        ],
      ),
      body: Center(
        child: BlocConsumer<IntroBloc, IntroState>(
          listener: (context, state) {
            if (state is IntroCompletedOrSkipped) {
              _navigateToNextScreen();
            } else if (state is IntroError) {
               ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error loading intro: ${state.message}')),
              );
            }
          },
          builder: (context, state) {
            if (state is IntroInitial || state is IntroLoading) {
              return const CircularProgressIndicator();
            } else if (state is IntroLoaded) {
              final currentPageContent = state.pages[state.currentPageIndex];
              final isLastPage = state.currentPageIndex == state.pages.length - 1;

              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          currentPageContent,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Back button
                        if (state.currentPageIndex > 0)
                          ElevatedButton(
                            onPressed: () {
                              context.read<IntroBloc>().add(PreviousPage());
                            },
                            child: const Text('Back'),
                          ) else const SizedBox(width: 80), // Placeholder to keep button alignment

                        // Next or Get Started button
                        ElevatedButton(
                          onPressed: () {
                            if (isLastPage) {
                              context.read<IntroBloc>().add(SkipIntro()); // Treat Get Started as Skip/Complete
                            } else {
                              context.read<IntroBloc>().add(NextPage());
                            }
                          },
                          child: Text(isLastPage ? 'Get Started' : 'Next'),
                        ),
                      ],
                    ),
                     const SizedBox(height: 20), // Spacing below buttons
                     Text('Page ${state.currentPageIndex + 1} of ${state.pages.length}'), // Page indicator
                  ],
                ),
              );
            } else if (state is IntroError) {
              return Text('Error: ${state.message}');
            }
            return const Text('Unknown state');
          },
        ),
      ),
    );
  }
}
