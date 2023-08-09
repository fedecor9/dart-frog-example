import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/controllers/user_controller.dart';
import 'package:my_project/sources/in_memory_users_source.dart';

final _dataSource = InMemoryUsers();
final UserController _userController = UserController(_dataSource);

Handler middleware(Handler handler) {
  return handler.use(provider<UserController>((context) => _userController));
}
