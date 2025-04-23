import '../repository/auth_repository.dart';

class LogoutUser {
  final AuthRepository authRepository;

  LogoutUser(this.authRepository);

  Future<void> call() async {
    return await authRepository.logout();
  }
}