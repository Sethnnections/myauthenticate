class User {
  final int id;
  final String email;
  final String password;

  User({required this.id, required this.email, required this.password});
}

// Dummy users
final List<User> users = [
  User(id: 1, email: 'u@e.com', password: 'pss'),
  User(id: 2, email: 'user2@example.com', password: 'password2'),
  User(id: 3, email: 'user3@example.com', password: 'password3'),
];
