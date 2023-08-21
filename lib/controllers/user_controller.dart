import 'dart:io';

import 'package:my_project/interfaces/users_data_source.dart';
import 'package:my_project/models/network_error.dart';
import 'package:my_project/models/user.dart';

///
class UserController {
  ///Constructor
  UserController(this._users);

  final IUsersDataSource _users;

  /// Create User from json and save it to in memory source
  Future<User?> createUser(Map<String, dynamic> json) async {
    _createUserFieldChecks(json);
    final user = User.fromJson(json);
    if (await _users.existsUser(user.email)) {
      throw NetworkError(
        code: HttpStatus.conflict,
        message: 'User already exists',
      );
    }
    await _users.saveUser(
      user,
    );
    return user;
  }

  void _createUserFieldChecks(Map<String, dynamic> json) {
    if (json['name'] == null) {
      throw NetworkError(
        code: HttpStatus.badRequest,
        message: 'Name is required',
      );
    }
    if (json['email'] == null) {
      throw NetworkError(
        code: HttpStatus.badRequest,
        message: 'Email is required',
      );
    }
    if (json['password'] == null) {
      throw NetworkError(
        code: HttpStatus.badRequest,
        message: 'Password is required',
      );
    }
  }

  /// Get all users
  Future<List<User>> get users => _users.users;

  /// Get user by identifier
  Future<User?> getUser(String identifier) async {
    if (!await _users.existsUser(identifier)) {
      throw NetworkError(
        code: HttpStatus.notFound,
        message: 'User not found',
      );
    }
    return _users.getUser(identifier);
  }
}
