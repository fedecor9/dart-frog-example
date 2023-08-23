import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/user.dart';
import 'package:my_project/sources/database.dart';
import 'package:uuid/uuid.dart';

class UserDbDataSource implements IUsersDataSource {
  UserDbDataSource(this.db);
  final Database db;

  @override
  Future<void> deleteUser(String id) async {
    // TODO: implement deleteUser
  }

  @override
  Future<bool> existsUser(String identifier) async {
    final result = await db.query('SELECT * FROM users WHERE id = @idValue', {
      'idValue': identifier,
    });
    return result.isNotEmpty;
  }

  @override
  Future<UserResponse?> getUser(String identifier) async {
    final result = await db.query('SELECT * FROM users WHERE id = @idValue', {
      'idValue': identifier,
    });
    if (result.isEmpty) return null;
    final [String id, String email, String name] = result.firstOrNull!.toList();
    return UserResponse(
      id: id,
      email: email,
      name: name,
    );
  }

  @override
  Future<User> saveUser(UserRequest user) async {
    final id = const Uuid().v4();

    await db.connection.execute(
      'INSERT INTO users (id, email, name, password) '
      'VALUES (@id, @email, @name, @password)',
      substitutionValues: {
        'id': id,
        'email': user.email,
        'name': user.name,
        'password': user.password,
      },
    );
    return UserResponse(name: user.name!, id: id, email: user.email);
  }

  @override
  Future<List<UserResponse>> get users async {
    final result = await db.query('SELECT id, email, name from users  ');
    return result.map(
      (e) {
        final [String id, String email, String name] = e;
        return UserResponse(
          id: id,
          email: email,
          name: name,
        );
      },
    ).toList();
  }
}
