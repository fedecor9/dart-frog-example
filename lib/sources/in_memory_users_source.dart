import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/user.dart';

///
class InMemoryUsers implements IUsersDataSource {
  /// Get instance of InMemoryUsers
  factory InMemoryUsers() => _instance;

  InMemoryUsers._();
  final _data = <String, User>{};

  static final InMemoryUsers _instance = InMemoryUsers._();

  /// Get all users
  @override
  Future<List<User>> get users async => _data.values.toList();

  /// Get user by id
  @override
  Future<User?> getUser(String id) async => _data[id];

  /// Save user
  @override
  void saveUser(User user) {
    _data[user.id] = user;
  }

  /// Delete user
  @override
  void deleteUser(String id) {
    _data.remove(id);
  }
}
