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

abstract class NotificacionPush implements _i1.SerializableModel {
  NotificacionPush._({
    this.id,
    required this.idCliente,
    required this.mensaje,
    required this.idDispositivo,
    required this.enviadoEl,
    required this.leidoEl,
  });

  factory NotificacionPush({
    int? id,
    required String idCliente,
    required String mensaje,
    required String idDispositivo,
    required DateTime enviadoEl,
    required DateTime leidoEl,
  }) = _NotificacionPushImpl;

  factory NotificacionPush.fromJson(Map<String, dynamic> jsonSerialization) {
    return NotificacionPush(
      id: jsonSerialization['id'] as int?,
      idCliente: jsonSerialization['idCliente'] as String,
      mensaje: jsonSerialization['mensaje'] as String,
      idDispositivo: jsonSerialization['idDispositivo'] as String,
      enviadoEl:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['enviadoEl']),
      leidoEl: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['leidoEl']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String idCliente;

  String mensaje;

  String idDispositivo;

  DateTime enviadoEl;

  DateTime leidoEl;

  NotificacionPush copyWith({
    int? id,
    String? idCliente,
    String? mensaje,
    String? idDispositivo,
    DateTime? enviadoEl,
    DateTime? leidoEl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'idCliente': idCliente,
      'mensaje': mensaje,
      'idDispositivo': idDispositivo,
      'enviadoEl': enviadoEl.toJson(),
      'leidoEl': leidoEl.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificacionPushImpl extends NotificacionPush {
  _NotificacionPushImpl({
    int? id,
    required String idCliente,
    required String mensaje,
    required String idDispositivo,
    required DateTime enviadoEl,
    required DateTime leidoEl,
  }) : super._(
          id: id,
          idCliente: idCliente,
          mensaje: mensaje,
          idDispositivo: idDispositivo,
          enviadoEl: enviadoEl,
          leidoEl: leidoEl,
        );

  @override
  NotificacionPush copyWith({
    Object? id = _Undefined,
    String? idCliente,
    String? mensaje,
    String? idDispositivo,
    DateTime? enviadoEl,
    DateTime? leidoEl,
  }) {
    return NotificacionPush(
      id: id is int? ? id : this.id,
      idCliente: idCliente ?? this.idCliente,
      mensaje: mensaje ?? this.mensaje,
      idDispositivo: idDispositivo ?? this.idDispositivo,
      enviadoEl: enviadoEl ?? this.enviadoEl,
      leidoEl: leidoEl ?? this.leidoEl,
    );
  }
}
