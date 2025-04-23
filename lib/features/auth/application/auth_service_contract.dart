abstract class AuthServiceContract {
  Future<void> login(String username, String password);
  Future<void> register(String username, String password, String email);
  Future<void> logout();
}