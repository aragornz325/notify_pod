/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class NotifyPodException
    implements _i1.SerializableException, _i1.SerializableModel {
  NotifyPodException._({
    required this.title,
    required this.error,
    this.stackTrace,
  });

  factory NotifyPodException({
    required String title,
    required String error,
    String? stackTrace,
  }) = _NotifyPodExceptionImpl;

  factory NotifyPodException.fromJson(Map<String, dynamic> jsonSerialization) {
    return NotifyPodException(
      title: jsonSerialization['title'] as String,
      error: jsonSerialization['error'] as String,
      stackTrace: jsonSerialization['stackTrace'] as String?,
    );
  }

  String title;

  String error;

  String? stackTrace;

  NotifyPodException copyWith({
    String? title,
    String? error,
    String? stackTrace,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'error': error,
      if (stackTrace != null) 'stackTrace': stackTrace,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotifyPodExceptionImpl extends NotifyPodException {
  _NotifyPodExceptionImpl({
    required String title,
    required String error,
    String? stackTrace,
  }) : super._(
          title: title,
          error: error,
          stackTrace: stackTrace,
        );

  @override
  NotifyPodException copyWith({
    String? title,
    String? error,
    Object? stackTrace = _Undefined,
  }) {
    return NotifyPodException(
      title: title ?? this.title,
      error: error ?? this.error,
      stackTrace: stackTrace is String? ? stackTrace : this.stackTrace,
    );
  }
}
