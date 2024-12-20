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

abstract class TokenDispositivo implements _i1.SerializableModel {
  TokenDispositivo._({
    this.id,
    required this.token,
    required this.idCliente,
  });

  factory TokenDispositivo({
    int? id,
    required String token,
    required String idCliente,
  }) = _TokenDispositivoImpl;

  factory TokenDispositivo.fromJson(Map<String, dynamic> jsonSerialization) {
    return TokenDispositivo(
      id: jsonSerialization['id'] as int?,
      token: jsonSerialization['token'] as String,
      idCliente: jsonSerialization['idCliente'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String token;

  String idCliente;

  TokenDispositivo copyWith({
    int? id,
    String? token,
    String? idCliente,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'idCliente': idCliente,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TokenDispositivoImpl extends TokenDispositivo {
  _TokenDispositivoImpl({
    int? id,
    required String token,
    required String idCliente,
  }) : super._(
          id: id,
          token: token,
          idCliente: idCliente,
        );

  @override
  TokenDispositivo copyWith({
    Object? id = _Undefined,
    String? token,
    String? idCliente,
  }) {
    return TokenDispositivo(
      id: id is int? ? id : this.id,
      token: token ?? this.token,
      idCliente: idCliente ?? this.idCliente,
    );
  }
}
