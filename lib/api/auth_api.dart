import 'package:myauthenticate/models/user.dart';

class AuthAPI {
  User? login(String email, String password) {
    final user = users.firstWhere(
      (user) => user.email == email && user.password == password,
    );
    return user;
  }
}
