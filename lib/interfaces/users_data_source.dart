import 'package:my_project/models/user.dart';

///Interface for users data source
abstract interface class IUsersDataSource {
  Future<User?> getUser(String identifier);

  Future<bool> existsUser(String identifier);

  Future<List<User>> get users;

  Future<void> saveUser(User user);

  void deleteUser(String id);
}
