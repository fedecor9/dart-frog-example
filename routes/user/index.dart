import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/controllers/user_controller.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:

      ///Get all users
      return _get();
    case HttpMethod.post:

      /// Create new user
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
  final user = UserController().createUser(body as Map<String, dynamic>);
  return Response(body: user.toJson().toString());
}

Response _get() => Response(body: 'Hello, GET!');
