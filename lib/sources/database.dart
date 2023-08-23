import 'package:postgres/postgres.dart';

class Database {
  late final PostgreSQLConnection _connection;

  Future<void> init(
    String dbName,
    String user,
    String pwd, {
    String host = 'localhost',
    int port = 5432,
  }) async {
    _connection = PostgreSQLConnection(
      host,
      port,
      dbName,
      username: user,
      password: pwd,
    );
    await _connection.open();
  }

  Future<PostgreSQLResult> query(
    String sql, [
    Map<String, dynamic>? substitutionValues,
  ]) =>
      _connection.query(sql, substitutionValues: substitutionValues);

  Future<void> close() => _connection.close();

  PostgreSQLConnection get connection => _connection;
}
