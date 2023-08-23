import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/user.dart';
import 'package:my_project/sources/database.dart';

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
  Future<User?> getUser(String identifier) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(User user) async {
    await db.connection.execute(
      'INSERT INTO users (id, email, name) VALUES (@id, @email, @name)',
      substitutionValues: {
        'id': user.id,
        'email': user.email,
        'name': user.name,
      },
    );
  }

  @override
  Future<List<User>> get users async {
    final result = await db.query('SELECT id, email, name from users  ');
    return result.map(
      (e) {
        final [String id, String email, String name] = e;
        return User(
          id: id,
          email: email,
          name: name,
        );
      },
    ).toList();
  }
}
