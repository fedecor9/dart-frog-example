import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/sources/in_memory_users_source.dart';

Future<void> init(InternetAddress ip, int port) async {
  // Any code initialized within this method will only run on server start
  GetIt.instance.registerLazySingleton<IUsersDataSource>(InMemoryUsers.new);
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  return serve(handler, ip, port);
}
