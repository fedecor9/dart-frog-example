import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed

///
class User with _$User {
  /// Create User
  const factory User({
    required String name,
    @JsonKey(defaultValue: '') required String id,
    required String email,
    required String password,
    Map<String, String>? personalData,
  }) = _User;

  /// Create User from Json
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
