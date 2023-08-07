import 'package:my_project/models/user.dart';
import 'package:my_project/sources/in_memory_users_source.dart';

/// In memory users source instance
final InMemoryUsers inMemoryUsers = InMemoryUsers();

///
class UserController {
  final _users = inMemoryUsers;

  /// Create User from json and save it to in memory source
  User createUser(Map<String, dynamic> json) {
    final user = User.fromJson(json);
    inMemoryUsers.saveUser(user);
    return user;
  }

  /// Get all users
  List<User> get users => _users.users;

  /// Get user by id
  User? getUser(String id) => _users.getUser(id);
}
