import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@freezed

///Common response error class
class NetworkError with _$NetworkError implements Exception {
  /// Create NetworkError
  factory NetworkError({
    required String message,
    required int code,
  }) = _NetworkError;
}
