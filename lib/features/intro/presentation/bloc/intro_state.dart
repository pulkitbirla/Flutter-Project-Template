part of 'intro_bloc.dart';

abstract class IntroState extends Equatable {
  const IntroState();

  @override
  List<Object> get props => [];
}

class IntroInitial extends IntroState {}

class IntroLoading extends IntroState {}

class IntroLoaded extends IntroState {
  final List<String> pages;
  final int currentPageIndex;

  const IntroLoaded({required this.pages, this.currentPageIndex = 0});

  @override
  List<Object> get props => [pages, currentPageIndex];

  IntroLoaded copyWith({List<String>? pages, int? currentPageIndex}) {
    return IntroLoaded(
      pages: pages ?? this.pages,
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }
}

class IntroError extends IntroState {
  final String message;

  const IntroError(this.message);

  @override
  List<Object> get props => [message];
}

// New state to indicate navigation away from intro
class IntroCompletedOrSkipped extends IntroState {}
