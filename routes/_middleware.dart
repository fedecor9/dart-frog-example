import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/models/network_error.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(errorMiddleware);
}

Handler errorMiddleware(Handler handler) {
  return (context) async {
    try {
      return await handler(context);
    } on NetworkError catch (e) {
      return Response(statusCode: e.code, body: e.message);
    } catch (e) {
      return Response(
        statusCode: HttpStatus.internalServerError,
        body: e.toString(),
      );
    }
  };
}
