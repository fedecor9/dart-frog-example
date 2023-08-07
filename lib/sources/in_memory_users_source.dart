import 'package:my_project/models/user.dart';

///
class InMemoryUsers {
  /// Get instance of InMemoryUsers
  factory InMemoryUsers() => _instance;

  InMemoryUsers._();
  final _data = <String, User>{};

  static final InMemoryUsers _instance = InMemoryUsers._();

  /// Get all users
  List<User> get users => _data.values.toList();

  /// Get user by id
  User? getUser(String id) => _data[id];

  /// Save user
  void saveUser(User user) {
    _data[user.id] = user;
  }

  /// Delete user
  void deleteUser(String id) {
    _data.remove(id);
  }
}
