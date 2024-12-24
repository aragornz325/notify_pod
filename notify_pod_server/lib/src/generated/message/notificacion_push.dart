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
import '../enums/notification_status.dart' as _i2;

abstract class NotificacionPush
    implements _i1.TableRow, _i1.ProtocolSerialization {
  NotificacionPush._({
    this.id,
    required this.userId,
    required this.title,
    required this.deviceId,
    required this.message,
    required this.sendAt,
    required this.status,
    this.readAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificacionPush({
    int? id,
    required String userId,
    required String title,
    required String deviceId,
    required String message,
    required DateTime sendAt,
    required _i2.NotificationStatus status,
    DateTime? readAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificacionPushImpl;

  factory NotificacionPush.fromJson(Map<String, dynamic> jsonSerialization) {
    return NotificacionPush(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as String,
      title: jsonSerialization['title'] as String,
      deviceId: jsonSerialization['deviceId'] as String,
      message: jsonSerialization['message'] as String,
      sendAt: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['sendAt']),
      status:
          _i2.NotificationStatus.fromJson((jsonSerialization['status'] as int)),
      readAt: jsonSerialization['readAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['readAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = NotificacionPushTable();

  static const db = NotificacionPushRepository._();

  @override
  int? id;

  String userId;

  String title;

  String deviceId;

  String message;

  DateTime sendAt;

  _i2.NotificationStatus status;

  DateTime? readAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  NotificacionPush copyWith({
    int? id,
    String? userId,
    String? title,
    String? deviceId,
    String? message,
    DateTime? sendAt,
    _i2.NotificationStatus? status,
    DateTime? readAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'title': title,
      'deviceId': deviceId,
      'message': message,
      'sendAt': sendAt.toJson(),
      'status': status.toJson(),
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'title': title,
      'deviceId': deviceId,
      'message': message,
      'sendAt': sendAt.toJson(),
      'status': status.toJson(),
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
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
    required String userId,
    required String title,
    required String deviceId,
    required String message,
    required DateTime sendAt,
    required _i2.NotificationStatus status,
    DateTime? readAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          title: title,
          deviceId: deviceId,
          message: message,
          sendAt: sendAt,
          status: status,
          readAt: readAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  NotificacionPush copyWith({
    Object? id = _Undefined,
    String? userId,
    String? title,
    String? deviceId,
    String? message,
    DateTime? sendAt,
    _i2.NotificationStatus? status,
    Object? readAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NotificacionPush(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      deviceId: deviceId ?? this.deviceId,
      message: message ?? this.message,
      sendAt: sendAt ?? this.sendAt,
      status: status ?? this.status,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class NotificacionPushTable extends _i1.Table {
  NotificacionPushTable({super.tableRelation})
      : super(tableName: 'serverpod_push_notificacion') {
    userId = _i1.ColumnString(
      'userId',
      this,
    );
    title = _i1.ColumnString(
      'title',
      this,
    );
    deviceId = _i1.ColumnString(
      'deviceId',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    sendAt = _i1.ColumnDateTime(
      'sendAt',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byIndex,
    );
    readAt = _i1.ColumnDateTime(
      'readAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString userId;

  late final _i1.ColumnString title;

  late final _i1.ColumnString deviceId;

  late final _i1.ColumnString message;

  late final _i1.ColumnDateTime sendAt;

  late final _i1.ColumnEnum<_i2.NotificationStatus> status;

  late final _i1.ColumnDateTime readAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        title,
        deviceId,
        message,
        sendAt,
        status,
        readAt,
        createdAt,
        updatedAt,
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
