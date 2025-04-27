part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthLoaded extends AuthState {
  final List<String> pages;
  final int currentPageIndex;

  const AuthLoaded({required this.pages, this.currentPageIndex = 0});

  @override
  List<Object> get props => [pages, currentPageIndex];

  AuthLoaded copyWith({List<String>? pages, int? currentPageIndex}) {
    return AuthLoaded(
      pages: pages ?? this.pages,
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
    );
  }
}

class AuthError extends AuthState {
  final String message;

  const AuthError(this.message);

  @override
  List<Object> get props => [message];
}

// New state to indicate navigation away from Auth
class AuthCompletedOrSkipped extends AuthState {}
