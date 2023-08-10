import 'package:my_project/models/user.dart';

///Interface for users data source
abstract interface class IUsersDataSource {
  /// Get user by id
  Future<User?> getUser(String id);

  /// Get all users
  Future<List<User>> get users;

  /// Save user
  void saveUser(User user);

  /// Delete user
  void deleteUser(String id);
}
