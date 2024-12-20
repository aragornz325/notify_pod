/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class NotificacionPush
    implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = NotificacionPushTable();

  static const db = NotificacionPushRepository._();

  @override
  int? id;

  String idCliente;

  String mensaje;

  String idDispositivo;

  DateTime enviadoEl;

  DateTime leidoEl;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'idCliente': idCliente,
      'mensaje': mensaje,
      'idDispositivo': idDispositivo,
      'enviadoEl': enviadoEl.toJson(),
      'leidoEl': leidoEl.toJson(),
    };
  }

  static NotificacionPushInclude include() {
    return NotificacionPushInclude._();
  }

  static NotificacionPushIncludeList includeList({
    _i1.WhereExpressionBuilder<NotificacionPushTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificacionPushTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificacionPushTable>? orderByList,
    NotificacionPushInclude? include,
  }) {
    return NotificacionPushIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(NotificacionPush.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(NotificacionPush.t),
      include: include,
    );
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

class NotificacionPushTable extends _i1.Table {
  NotificacionPushTable({super.tableRelation})
      : super(tableName: 'serverpod_notificacion_push') {
    idCliente = _i1.ColumnString(
      'idCliente',
      this,
    );
    mensaje = _i1.ColumnString(
      'mensaje',
      this,
    );
    idDispositivo = _i1.ColumnString(
      'idDispositivo',
      this,
    );
    enviadoEl = _i1.ColumnDateTime(
      'enviadoEl',
      this,
    );
    leidoEl = _i1.ColumnDateTime(
      'leidoEl',
      this,
    );
  }

  late final _i1.ColumnString idCliente;

  late final _i1.ColumnString mensaje;

  late final _i1.ColumnString idDispositivo;

  late final _i1.ColumnDateTime enviadoEl;

  late final _i1.ColumnDateTime leidoEl;

  @override
  List<_i1.Column> get columns => [
        id,
        idCliente,
        mensaje,
        idDispositivo,
        enviadoEl,
        leidoEl,
      ];
}

class NotificacionPushInclude extends _i1.IncludeObject {
  NotificacionPushInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => NotificacionPush.t;
}

class NotificacionPushIncludeList extends _i1.IncludeList {
  NotificacionPushIncludeList._({
    _i1.WhereExpressionBuilder<NotificacionPushTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(NotificacionPush.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => NotificacionPush.t;
}

class NotificacionPushRepository {
  const NotificacionPushRepository._();

  Future<List<NotificacionPush>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificacionPushTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificacionPushTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificacionPushTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<NotificacionPush>(
      where: where?.call(NotificacionPush.t),
      orderBy: orderBy?.call(NotificacionPush.t),
      orderByList: orderByList?.call(NotificacionPush.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificacionPush?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificacionPushTable>? where,
    int? offset,
    _i1.OrderByBuilder<NotificacionPushTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificacionPushTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<NotificacionPush>(
      where: where?.call(NotificacionPush.t),
      orderBy: orderBy?.call(NotificacionPush.t),
      orderByList: orderByList?.call(NotificacionPush.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificacionPush?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<NotificacionPush>(
      id,
      transaction: transaction,
    );
  }

  Future<List<NotificacionPush>> insert(
    _i1.Session session,
    List<NotificacionPush> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<NotificacionPush>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificacionPush> insertRow(
    _i1.Session session,
    NotificacionPush row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<NotificacionPush>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificacionPush>> update(
    _i1.Session session,
    List<NotificacionPush> rows, {
    _i1.ColumnSelections<NotificacionPushTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<NotificacionPush>(
      rows,
      columns: columns?.call(NotificacionPush.t),
      transaction: transaction,
    );
  }

  Future<NotificacionPush> updateRow(
    _i1.Session session,
    NotificacionPush row, {
    _i1.ColumnSelections<NotificacionPushTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<NotificacionPush>(
      row,
      columns: columns?.call(NotificacionPush.t),
      transaction: transaction,
    );
  }

  Future<List<NotificacionPush>> delete(
    _i1.Session session,
    List<NotificacionPush> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<NotificacionPush>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificacionPush> deleteRow(
    _i1.Session session,
    NotificacionPush row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<NotificacionPush>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificacionPush>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotificacionPushTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<NotificacionPush>(
      where: where(NotificacionPush.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificacionPushTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<NotificacionPush>(
      where: where?.call(NotificacionPush.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
