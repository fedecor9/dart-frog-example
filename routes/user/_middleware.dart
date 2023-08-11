import 'package:dart_frog/dart_frog.dart';
import 'package:get_it/get_it.dart';
import 'package:my_project/controllers/user_controller.dart';
import 'package:my_project/interfaces/users_data_source.dart';

final UserController _userController =
    UserController(GetIt.I.get<IUsersDataSource>());

Handler middleware(Handler handler) {
  return handler.use(provider<UserController>((context) => _userController));
}
