import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/controllers/user_controller.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.put:
      return _put();
    case HttpMethod.delete:
      return _delete(context);
    case HttpMethod.head:
      return Response(body: 'Hello, HEAD!');
    case HttpMethod.options:
      return Response(body: 'Hello, OPTIONS!');
    case HttpMethod.patch:
      return Response(body: 'Hello, PATCH!');
  }
}

Response _delete(RequestContext context) => Response(body: 'Hello, DELETE!');

Response _put() => Response(body: 'Hello, PUT!');

Future<Response> _post(RequestContext context) async {
  if (context.request.headers['content-type'] != 'application/json') {
    return Response(statusCode: 400, body: 'Bad request');
  }
  final body = await context.request.json();
  final (error, user) =
      context.read<UserController>().createUser(body as Map<String, dynamic>);
  if (error == null) return Response(body: user?.toJson().toString());
  return Response(statusCode: 400, body: error.toString());
}

Response _get(RequestContext context) =>
    Response.json(body: context.read<UserController>().users);
