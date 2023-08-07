import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  print(context.request.headers);
  return Response(body: 'Welcome to Dart Frog!');
}
