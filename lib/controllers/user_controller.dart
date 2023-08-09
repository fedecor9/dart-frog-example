import 'dart:io';

import 'package:my_project/models/network_error.dart';
import 'package:my_project/models/user.dart';
import 'package:my_project/sources/in_memory_users_source.dart';
import 'package:uuid/uuid.dart';

///
class UserController {
  ///Constructor
  UserController(this._users);

  final InMemoryUsers _users;

  /// Create User from json and save it to in memory source
  (NetworkError?, User?) createUser(Map<String, dynamic> json) {
    try {
      _createUserChecks(json);
      final user = User.fromJson(json);
      _users.saveUser(
        user.copyWith(id: const Uuid().v4()),
      );
      return (null, user);
    } catch (error) {
      return (error as NetworkError, null);
    }
  }

  void _createUserChecks(Map<String, dynamic> json) {
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
  }

  /// Get all users
  List<User> get users => _users.users;

  /// Get user by id
  User? getUser(String id) => _users.getUser(id);
}
