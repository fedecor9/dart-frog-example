// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return BaseUser.fromJson(json);
    case 'request':
      return UserRequest.fromJson(json);
    case 'response':
      return UserResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  String? get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)
        $default, {
    required TResult Function(String email, String password, String? name)
        request,
    required TResult Function(String name, String id, String email) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult? Function(String email, String password, String? name)? request,
    TResult? Function(String name, String id, String email)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult Function(String email, String password, String? name)? request,
    TResult Function(String name, String id, String email)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseUser value) $default, {
    required TResult Function(UserRequest value) request,
    required TResult Function(UserResponse value) response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BaseUser value)? $default, {
    TResult? Function(UserRequest value)? request,
    TResult? Function(UserResponse value)? response,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseUser value)? $default, {
    TResult Function(UserRequest value)? request,
    TResult Function(UserResponse value)? response,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name!
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$BaseUserCopyWith(
          _$BaseUser value, $Res Function(_$BaseUser) then) =
      __$$BaseUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(defaultValue: '') String id,
      String email,
      String? password,
      Map<String, String>? personalData});
}

/// @nodoc
class __$$BaseUserCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$BaseUser>
    implements _$$BaseUserCopyWith<$Res> {
  __$$BaseUserCopyWithImpl(_$BaseUser _value, $Res Function(_$BaseUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? email = null,
    Object? password = freezed,
    Object? personalData = freezed,
  }) {
    return _then(_$BaseUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      personalData: freezed == personalData
          ? _value._personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseUser implements BaseUser {
  const _$BaseUser(
      {required this.name,
      @JsonKey(defaultValue: '') required this.id,
      required this.email,
      this.password,
      final Map<String, String>? personalData,
      final String? $type})
      : _personalData = personalData,
        $type = $type ?? 'default';

  factory _$BaseUser.fromJson(Map<String, dynamic> json) =>
      _$$BaseUserFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  final String email;
  @override
  final String? password;
  final Map<String, String>? _personalData;
  @override
  Map<String, String>? get personalData {
    final value = _personalData;
    if (value == null) return null;
    if (_personalData is EqualUnmodifiableMapView) return _personalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User(name: $name, id: $id, email: $email, password: $password, personalData: $personalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._personalData, _personalData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, email, password,
      const DeepCollectionEquality().hash(_personalData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseUserCopyWith<_$BaseUser> get copyWith =>
      __$$BaseUserCopyWithImpl<_$BaseUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)
        $default, {
    required TResult Function(String email, String password, String? name)
        request,
    required TResult Function(String name, String id, String email) response,
  }) {
    return $default(name, id, email, password, personalData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult? Function(String email, String password, String? name)? request,
    TResult? Function(String name, String id, String email)? response,
  }) {
    return $default?.call(name, id, email, password, personalData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult Function(String email, String password, String? name)? request,
    TResult Function(String name, String id, String email)? response,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, id, email, password, personalData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseUser value) $default, {
    required TResult Function(UserRequest value) request,
    required TResult Function(UserResponse value) response,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BaseUser value)? $default, {
    TResult? Function(UserRequest value)? request,
    TResult? Function(UserResponse value)? response,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseUser value)? $default, {
    TResult Function(UserRequest value)? request,
    TResult Function(UserResponse value)? response,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseUserToJson(
      this,
    );
  }
}

abstract class BaseUser implements User {
  const factory BaseUser(
      {required final String name,
      @JsonKey(defaultValue: '') required final String id,
      required final String email,
      final String? password,
      final Map<String, String>? personalData}) = _$BaseUser;

  factory BaseUser.fromJson(Map<String, dynamic> json) = _$BaseUser.fromJson;

  @override
  String get name;
  @JsonKey(defaultValue: '')
  String get id;
  @override
  String get email;
  String? get password;
  Map<String, String>? get personalData;
  @override
  @JsonKey(ignore: true)
  _$$BaseUserCopyWith<_$BaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRequestCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserRequestCopyWith(
          _$UserRequest value, $Res Function(_$UserRequest) then) =
      __$$UserRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String? name});
}

/// @nodoc
class __$$UserRequestCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserRequest>
    implements _$$UserRequestCopyWith<$Res> {
  __$$UserRequestCopyWithImpl(
      _$UserRequest _value, $Res Function(_$UserRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
  }) {
    return _then(_$UserRequest(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRequest implements UserRequest {
  const _$UserRequest(
      {required this.email,
      required this.password,
      this.name,
      final String? $type})
      : $type = $type ?? 'request';

  factory _$UserRequest.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.request(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestCopyWith<_$UserRequest> get copyWith =>
      __$$UserRequestCopyWithImpl<_$UserRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)
        $default, {
    required TResult Function(String email, String password, String? name)
        request,
    required TResult Function(String name, String id, String email) response,
  }) {
    return request(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult? Function(String email, String password, String? name)? request,
    TResult? Function(String name, String id, String email)? response,
  }) {
    return request?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult Function(String email, String password, String? name)? request,
    TResult Function(String name, String id, String email)? response,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseUser value) $default, {
    required TResult Function(UserRequest value) request,
    required TResult Function(UserResponse value) response,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BaseUser value)? $default, {
    TResult? Function(UserRequest value)? request,
    TResult? Function(UserResponse value)? response,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseUser value)? $default, {
    TResult Function(UserRequest value)? request,
    TResult Function(UserResponse value)? response,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestToJson(
      this,
    );
  }
}

abstract class UserRequest implements User {
  const factory UserRequest(
      {required final String email,
      required final String password,
      final String? name}) = _$UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) =
      _$UserRequest.fromJson;

  @override
  String get email;
  String get password;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$UserRequestCopyWith<_$UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserResponseCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserResponseCopyWith(
          _$UserResponse value, $Res Function(_$UserResponse) then) =
      __$$UserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, String email});
}

/// @nodoc
class __$$UserResponseCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserResponse>
    implements _$$UserResponseCopyWith<$Res> {
  __$$UserResponseCopyWithImpl(
      _$UserResponse _value, $Res Function(_$UserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_$UserResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponse implements UserResponse {
  const _$UserResponse(
      {required this.name,
      required this.id,
      required this.email,
      final String? $type})
      : $type = $type ?? 'response';

  factory _$UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.response(name: $name, id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseCopyWith<_$UserResponse> get copyWith =>
      __$$UserResponseCopyWithImpl<_$UserResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)
        $default, {
    required TResult Function(String email, String password, String? name)
        request,
    required TResult Function(String name, String id, String email) response,
  }) {
    return response(name, id, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult? Function(String email, String password, String? name)? request,
    TResult? Function(String name, String id, String email)? response,
  }) {
    return response?.call(name, id, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, @JsonKey(defaultValue: '') String id,
            String email, String? password, Map<String, String>? personalData)?
        $default, {
    TResult Function(String email, String password, String? name)? request,
    TResult Function(String name, String id, String email)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(name, id, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseUser value) $default, {
    required TResult Function(UserRequest value) request,
    required TResult Function(UserResponse value) response,
  }) {
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(BaseUser value)? $default, {
    TResult? Function(UserRequest value)? request,
    TResult? Function(UserResponse value)? response,
  }) {
    return response?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseUser value)? $default, {
    TResult Function(UserRequest value)? request,
    TResult Function(UserResponse value)? response,
    required TResult orElse(),
  }) {
    if (response != null) {
      return response(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseToJson(
      this,
    );
  }
}

abstract class UserResponse implements User {
  const factory UserResponse(
      {required final String name,
      required final String id,
      required final String email}) = _$UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponse.fromJson;

  @override
  String get name;
  String get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$UserResponseCopyWith<_$UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
