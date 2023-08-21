import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/sources/users_db_source.dart';
import 'package:my_project/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';

Future<void> init(InternetAddress ip, int port) async {
  // Any code initialized within this method will only run on server start
  final prisma = PrismaClient(
    stdout: Event.values, // print all events to the console
    datasources: const Datasources(),
  );
  // GetIt.instance.registerLazySingleton<IUsersDataSource>(InMemoryUsers.new);
  GetIt.instance.registerLazySingleton<PrismaClient>(() => prisma);
  GetIt.instance.registerLazySingleton<IUsersDataSource>(
    () => UsersDbSource(GetIt.I.get()),
  );
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  return serve(handler, ip, port);
}
