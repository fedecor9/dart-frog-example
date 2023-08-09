import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed
class NetworkError with _$NetworkError implements Exception {
  factory NetworkError({
    required String message,
    required int code,
  }) = _NetworkError;
}
