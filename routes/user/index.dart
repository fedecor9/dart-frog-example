import 'dart:async';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/controllers/user_controller.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.put:
      return _put();
    case HttpMethod.delete:
      return _delete(context);
    case _:
      return Response(statusCode: 405, body: 'Method not allowed');
  }
}

Response _delete(RequestContext context) => Response(body: 'Hello, DELETE!');

Response _put() => Response(body: 'Hello, PUT!');

Future<Response> _post(RequestContext context) async {
  if (context.request.headers['content-type'] != 'application/json') {
    return Response(statusCode: 400, body: 'Bad request');
  }
  final body = await context.request.json();
  final user =
      context.read<UserController>().createUser(body as Map<String, dynamic>);
  return Response(body: user?.toJson().toString());
}

Future<Response> _get(RequestContext context) async =>
    Response.json(body: await context.read<UserController>().users);
