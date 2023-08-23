import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/user.dart';
import 'package:uuid/uuid.dart';

///
class InMemoryUsers implements IUsersDataSource {
  factory InMemoryUsers() => _instance;

  InMemoryUsers._();
  final _data = <String, User>{};

  static final InMemoryUsers _instance = InMemoryUsers._();

  @override
  Future<List<UserResponse>> get users async =>
      _data.values.map((e) => UserResponse.fromJson(e.toJson())).toList();

  @override
  Future<UserResponse?> getUser(
    String identifier,
  ) async =>
      _data[identifier] != null
          ? UserResponse.fromJson(_data[identifier]!.toJson())
          : null;

  @override
  Future<User> saveUser(UserRequest user) async {
    final newUser = BaseUser(
      name: user.name!,
      id: const Uuid().v4(),
      email: user.email,
      password: user.password,
    );
    _data[newUser.id] = newUser;
    return newUser;
  }

  @override
  Future<void> deleteUser(String id) async {
    _data.remove(id);
  }

  @override
  Future<bool> existsUser(String identifier) async =>
      _data.containsKey(identifier) ||
      _data.values.any((user) => user.email == identifier);
}
