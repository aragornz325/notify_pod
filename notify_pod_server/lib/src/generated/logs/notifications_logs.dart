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

abstract class NotificationsLogs
    implements _i1.TableRow, _i1.ProtocolSerialization {
  NotificationsLogs._({
    this.id,
    required this.notificationId,
    required this.status,
    this.error,
    required this.deviceId,
    required this.attemptAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificationsLogs({
    int? id,
    required String notificationId,
    required _i2.NotificationStatus status,
    String? error,
    required int deviceId,
    required DateTime attemptAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificationsLogsImpl;

  factory NotificationsLogs.fromJson(Map<String, dynamic> jsonSerialization) {
    return NotificationsLogs(
      id: jsonSerialization['id'] as int?,
      notificationId: jsonSerialization['notificationId'] as String,
      status:
          _i2.NotificationStatus.fromJson((jsonSerialization['status'] as int)),
      error: jsonSerialization['error'] as String?,
      deviceId: jsonSerialization['deviceId'] as int,
      attemptAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['attemptAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = NotificationsLogsTable();

  static const db = NotificationsLogsRepository._();

  @override
  int? id;

  String notificationId;

  _i2.NotificationStatus status;

  String? error;

  int deviceId;

  DateTime attemptAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  NotificationsLogs copyWith({
    int? id,
    String? notificationId,
    _i2.NotificationStatus? status,
    String? error,
    int? deviceId,
    DateTime? attemptAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'notificationId': notificationId,
      'status': status.toJson(),
      if (error != null) 'error': error,
      'deviceId': deviceId,
      'attemptAt': attemptAt.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'notificationId': notificationId,
      'status': status.toJson(),
      if (error != null) 'error': error,
      'deviceId': deviceId,
      'attemptAt': attemptAt.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static NotificationsLogsInclude include() {
    return NotificationsLogsInclude._();
  }

  static NotificationsLogsIncludeList includeList({
    _i1.WhereExpressionBuilder<NotificationsLogsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationsLogsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationsLogsTable>? orderByList,
    NotificationsLogsInclude? include,
  }) {
    return NotificationsLogsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(NotificationsLogs.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(NotificationsLogs.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificationsLogsImpl extends NotificationsLogs {
  _NotificationsLogsImpl({
    int? id,
    required String notificationId,
    required _i2.NotificationStatus status,
    String? error,
    required int deviceId,
    required DateTime attemptAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          notificationId: notificationId,
          status: status,
          error: error,
          deviceId: deviceId,
          attemptAt: attemptAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  NotificationsLogs copyWith({
    Object? id = _Undefined,
    String? notificationId,
    _i2.NotificationStatus? status,
    Object? error = _Undefined,
    int? deviceId,
    DateTime? attemptAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NotificationsLogs(
      id: id is int? ? id : this.id,
      notificationId: notificationId ?? this.notificationId,
      status: status ?? this.status,
      error: error is String? ? error : this.error,
      deviceId: deviceId ?? this.deviceId,
      attemptAt: attemptAt ?? this.attemptAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class NotificationsLogsTable extends _i1.Table {
  NotificationsLogsTable({super.tableRelation})
      : super(tableName: 'serverpod_notifications_logs') {
    notificationId = _i1.ColumnString(
      'notificationId',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byIndex,
    );
    error = _i1.ColumnString(
      'error',
      this,
    );
    deviceId = _i1.ColumnInt(
      'deviceId',
      this,
    );
    attemptAt = _i1.ColumnDateTime(
      'attemptAt',
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

  late final _i1.ColumnString notificationId;

  late final _i1.ColumnEnum<_i2.NotificationStatus> status;

  late final _i1.ColumnString error;

  late final _i1.ColumnInt deviceId;

  late final _i1.ColumnDateTime attemptAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        notificationId,
        status,
        error,
        deviceId,
        attemptAt,
        createdAt,
        updatedAt,
      ];
}

class NotificationsLogsInclude extends _i1.IncludeObject {
  NotificationsLogsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => NotificationsLogs.t;
}

class NotificationsLogsIncludeList extends _i1.IncludeList {
  NotificationsLogsIncludeList._({
    _i1.WhereExpressionBuilder<NotificationsLogsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(NotificationsLogs.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => NotificationsLogs.t;
}

class NotificationsLogsRepository {
  const NotificationsLogsRepository._();

  Future<List<NotificationsLogs>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationsLogsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationsLogsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationsLogsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<NotificationsLogs>(
      where: where?.call(NotificationsLogs.t),
      orderBy: orderBy?.call(NotificationsLogs.t),
      orderByList: orderByList?.call(NotificationsLogs.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificationsLogs?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationsLogsTable>? where,
    int? offset,
    _i1.OrderByBuilder<NotificationsLogsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationsLogsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<NotificationsLogs>(
      where: where?.call(NotificationsLogs.t),
      orderBy: orderBy?.call(NotificationsLogs.t),
      orderByList: orderByList?.call(NotificationsLogs.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificationsLogs?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<NotificationsLogs>(
      id,
      transaction: transaction,
    );
  }

  Future<List<NotificationsLogs>> insert(
    _i1.Session session,
    List<NotificationsLogs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<NotificationsLogs>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificationsLogs> insertRow(
    _i1.Session session,
    NotificationsLogs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<NotificationsLogs>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificationsLogs>> update(
    _i1.Session session,
    List<NotificationsLogs> rows, {
    _i1.ColumnSelections<NotificationsLogsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<NotificationsLogs>(
      rows,
      columns: columns?.call(NotificationsLogs.t),
      transaction: transaction,
    );
  }

  Future<NotificationsLogs> updateRow(
    _i1.Session session,
    NotificationsLogs row, {
    _i1.ColumnSelections<NotificationsLogsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<NotificationsLogs>(
      row,
      columns: columns?.call(NotificationsLogs.t),
      transaction: transaction,
    );
  }

  Future<List<NotificationsLogs>> delete(
    _i1.Session session,
    List<NotificationsLogs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<NotificationsLogs>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificationsLogs> deleteRow(
    _i1.Session session,
    NotificationsLogs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<NotificationsLogs>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificationsLogs>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotificationsLogsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<NotificationsLogs>(
      where: where(NotificationsLogs.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationsLogsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<NotificationsLogs>(
      where: where?.call(NotificationsLogs.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
