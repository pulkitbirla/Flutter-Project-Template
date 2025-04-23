import '../entities/user.dart';

abstract class AuthRepository {
  Future<void> sendLoginOtp({
    String? phoneNumber,
    String? email,
  });
  Future<User> verifyLoginOtp(
      {String? phoneNumber, String? email, required String otp});
  Future<User> register(
      String username, String email, String password, String phoneNumber);
  Future<void> logout();
}