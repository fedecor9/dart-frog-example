import 'package:my_project/models/user.dart';

///Interface for users data source
abstract interface class IUsersDataSource {
  Future<User?> getUser(String identifier);

  Future<bool> existsUser(String identifier);

  Future<List<UserResponse>> get users;

  Future<User> saveUser(UserRequest user);

  Future<void> deleteUser(String id);
}
