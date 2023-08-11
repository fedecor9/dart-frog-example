import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/user.dart';

///
class InMemoryUsers implements IUsersDataSource {
  factory InMemoryUsers() => _instance;

  InMemoryUsers._();
  final _data = <String, User>{};

  static final InMemoryUsers _instance = InMemoryUsers._();

  @override
  Future<List<User>> get users async => _data.values.toList();

  @override
  Future<User?> getUser(
    String identifier,
  ) async =>
      _data[identifier];

  @override
  void saveUser(User user) {
    _data[user.id] = user;
  }

  @override
  void deleteUser(String id) {
    _data.remove(id);
  }

  @override
  bool existsUser(String identifier) =>
      _data.containsKey(identifier) ||
      _data.values.any((user) => user.email == identifier);
}
