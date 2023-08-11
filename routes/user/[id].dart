import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/controllers/user_controller.dart';
import 'package:my_project/models/network_error.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method != HttpMethod.get) {
    throw NetworkError(
      code: HttpStatus.methodNotAllowed,
      message: 'Method not allowed',
    );
  }
  return Response.json(body: await context.read<UserController>().getUser(id));
}
