import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/sources/database.dart';
import 'package:my_project/sources/user_db_data_source.dart';

Future<void> init(InternetAddress ip, int port) async {
  // Any code initialized within this method will only run on server start
  // GetIt.instance.registerLazySingleton<IUsersDataSource>(InMemoryUsers.new);
  final dotEnv = DotEnv(includePlatformEnvironment: true)..load(['.env']);

  final database = Database();
  await database.init(
    dotEnv.getOrElse(
      'POSTGRES_DB',
      () => throw Exception('POSTGRES_DB not defined'),
    ),
    dotEnv.getOrElse(
      'POSTGRES_USER',
      () => throw Exception('POSTGRES_USER not defined'),
    ),
    dotEnv.getOrElse(
      'POSTGRES_PASSWORD',
      () => throw Exception('POSTGRES_PASSWORD not defined'),
    ),
  );
  GetIt.instance.registerLazySingleton<Database>(() => database);
  GetIt.instance.registerLazySingleton<IUsersDataSource>(
    () => UserDbDataSource(GetIt.instance.get()),
  );
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  return serve(handler, ip, port);
}
