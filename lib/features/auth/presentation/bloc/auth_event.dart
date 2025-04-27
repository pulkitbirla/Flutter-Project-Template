part of 'auth_bloc.dart';


abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class Login extends AuthEvent {}

class RegisterNow extends AuthEvent {}

class ForgotPassword extends AuthEvent {}

class Register extends AuthEvent {}

class LoginNow extends AuthEvent {}

class Logout extends AuthEvent {}