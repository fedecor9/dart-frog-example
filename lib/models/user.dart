import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  /// Create User
  const factory User({
    required String name,
    @JsonKey(defaultValue: '') required String id,
    required String email,
    String? password,
    Map<String, String>? personalData,
  }) = BaseUser;

  const factory User.request({
    required String email,
    required String password,
    String? name,
  }) = UserRequest;

  const factory User.response({
    required String name,
    required String id,
    required String email,
  }) = UserResponse;

  /// Create User from Json
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
