
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroInitial()) {
    on<LoadIntro>(_onLoadIntro);
    on<NextPage>(_onNextPage);
    on<PreviousPage>(_onPreviousPage);
    on<SkipIntro>(_onSkipIntro);
  }

  Future<void> _onLoadIntro(
    LoadIntro event,
    Emitter<IntroState> emit,
  ) async {
    emit(IntroLoading());
    try {
      // Simulate loading content for multiple pages
      await Future.delayed(const Duration(seconds: 1)); // Shorter delay for quicker testing
      final List<String> introPagesContent = [
        "Welcome to My App! Discover amazing features.",
        "Page 2: Explore our services. Learn how we can help you.",
        "Page 3: Get Started! Ready to dive in?",
      ];
      emit(IntroLoaded(pages: introPagesContent, currentPageIndex: 0));
    } catch (e) {
      emit(IntroError(e.toString()));
    }
  }

  void _onNextPage(
    NextPage event,
    Emitter<IntroState> emit,
  ) {
    if (state is IntroLoaded) {
      final currentState = state as IntroLoaded;
      if (currentState.currentPageIndex < currentState.pages.length - 1) {
        emit(currentState.copyWith(currentPageIndex: currentState.currentPageIndex + 1));
      } else {
        // Reached the last page, navigate away
        emit(IntroCompletedOrSkipped());
      }
    }
  }

  void _onPreviousPage(
    PreviousPage event,
    Emitter<IntroState> emit,
  ) {
    if (state is IntroLoaded) {
      final currentState = state as IntroLoaded;
      if (currentState.currentPageIndex > 0) {
        emit(currentState.copyWith(currentPageIndex: currentState.currentPageIndex - 1));
      }
    }
  }

  void _onSkipIntro(
    SkipIntro event,
    Emitter<IntroState> emit,
  ) {
    // Immediately navigate away
    emit(IntroCompletedOrSkipped());
  }
}
