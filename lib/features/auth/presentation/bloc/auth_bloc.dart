
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginNow>(_onLoginNow);
    on<Login>(_onLogin);
    on<RegisterNow>(_onRegisterNow);
    on<Register>(_onRegister);
    on<ForgotPassword>(_onForgotPassword);
    on<Logout>(_onLogout);
  }

  // Future<void> _onLoadAuth(
  //   LoadAuth event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(AuthLoading());
  //   try {
  //     // Simulate loading content for multiple pages
  //     await Future.delayed(const Duration(seconds: 1)); // Shorter delay for quicker testing
  //     final List<String> AuthPagesContent = [
  //       "Welcome to My App! Discover amazing features.",
  //       "Page 2: Explore our services. Learn how we can help you.",
  //       "Page 3: Get Started! Ready to dive in?",
  //     ];
  //     emit(AuthLoaded(pages: AuthPagesContent, currentPageIndex: 0));
  //   } catch (e) {
  //     emit(AuthError(e.toString()));
  //   }
  // }

  // void _onNextPage(
  //   NextPage event,
  //   Emitter<AuthState> emit,
  // ) {
  //   if (state is AuthLoaded) {
  //     final currentState = state as AuthLoaded;
  //     if (currentState.currentPageIndex < currentState.pages.length - 1) {
  //       emit(currentState.copyWith(currentPageIndex: currentState.currentPageIndex + 1));
  //     } else {
  //       // Reached the last page, navigate away
  //       emit(AuthCompletedOrSkipped());
  //     }
  //   }
  // }

  // void _onPreviousPage(
  //   PreviousPage event,
  //   Emitter<AuthState> emit,
  // ) {
  //   if (state is AuthLoaded) {
  //     final currentState = state as AuthLoaded;
  //     if (currentState.currentPageIndex > 0) {
  //       emit(currentState.copyWith(currentPageIndex: currentState.currentPageIndex - 1));
  //     }
  //   }
  // }

  // void _onSkipAuth(
  //   SkipAuth event,
  //   Emitter<AuthState> emit,
  // ) {
  //   // Immediately navigate away
  //   emit(AuthCompletedOrSkipped());
  // }

  FutureOr<void> _onLoginNow(LoginNow event, Emitter<AuthState> emit) {
  }

  FutureOr<void> _onLogin(Login event, Emitter<AuthState> emit) {
  }

  FutureOr<void> _onRegisterNow(RegisterNow event, Emitter<AuthState> emit) {
  }

  FutureOr<void> _onRegister(Register event, Emitter<AuthState> emit) {
  }

  FutureOr<void> _onLogout(Logout event, Emitter<AuthState> emit) {
  }

  FutureOr<void> _onForgotPassword(ForgotPassword event, Emitter<AuthState> emit) {
  }
}
