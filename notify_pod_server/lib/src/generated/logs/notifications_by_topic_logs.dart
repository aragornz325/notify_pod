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

abstract class NotificationsByTopicLogs
    implements _i1.TableRow, _i1.ProtocolSerialization {
  NotificationsByTopicLogs._({
    this.id,
    required this.notificationId,
    required this.status,
    this.error,
    this.topic,
    required this.attemptAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificationsByTopicLogs({
    int? id,
    required int notificationId,
    required _i2.NotificationStatus status,
    String? error,
    String? topic,
    required DateTime attemptAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificationsByTopicLogsImpl;

  factory NotificationsByTopicLogs.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return NotificationsByTopicLogs(
      id: jsonSerialization['id'] as int?,
      notificationId: jsonSerialization['notificationId'] as int,
      status:
          _i2.NotificationStatus.fromJson((jsonSerialization['status'] as int)),
      error: jsonSerialization['error'] as String?,
      topic: jsonSerialization['topic'] as String?,
      attemptAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['attemptAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = NotificationsByTopicLogsTable();

  static const db = NotificationsByTopicLogsRepository._();

  @override
  int? id;

  int notificationId;

  _i2.NotificationStatus status;

  String? error;

  String? topic;

  DateTime attemptAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  NotificationsByTopicLogs copyWith({
    int? id,
    int? notificationId,
    _i2.NotificationStatus? status,
    String? error,
    String? topic,
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
      if (topic != null) 'topic': topic,
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
      if (topic != null) 'topic': topic,
      'attemptAt': attemptAt.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static NotificationsByTopicLogsInclude include() {
    return NotificationsByTopicLogsInclude._();
  }

  static NotificationsByTopicLogsIncludeList includeList({
    _i1.WhereExpressionBuilder<NotificationsByTopicLogsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationsByTopicLogsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationsByTopicLogsTable>? orderByList,
    NotificationsByTopicLogsInclude? include,
  }) {
    return NotificationsByTopicLogsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(NotificationsByTopicLogs.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(NotificationsByTopicLogs.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificationsByTopicLogsImpl extends NotificationsByTopicLogs {
  _NotificationsByTopicLogsImpl({
    int? id,
    required int notificationId,
    required _i2.NotificationStatus status,
    String? error,
    String? topic,
    required DateTime attemptAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          notificationId: notificationId,
          status: status,
          error: error,
          topic: topic,
          attemptAt: attemptAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  NotificationsByTopicLogs copyWith({
    Object? id = _Undefined,
    int? notificationId,
    _i2.NotificationStatus? status,
    Object? error = _Undefined,
    Object? topic = _Undefined,
    DateTime? attemptAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NotificationsByTopicLogs(
      id: id is int? ? id : this.id,
      notificationId: notificationId ?? this.notificationId,
      status: status ?? this.status,
      error: error is String? ? error : this.error,
      topic: topic is String? ? topic : this.topic,
      attemptAt: attemptAt ?? this.attemptAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class NotificationsByTopicLogsTable extends _i1.Table {
  NotificationsByTopicLogsTable({super.tableRelation})
      : super(tableName: 'serverpod_notifications_by_topic_logs') {
    notificationId = _i1.ColumnInt(
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
    topic = _i1.ColumnString(
      'topic',
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

  late final _i1.ColumnInt notificationId;

  late final _i1.ColumnEnum<_i2.NotificationStatus> status;

  late final _i1.ColumnString error;

  late final _i1.ColumnString topic;

  late final _i1.ColumnDateTime attemptAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        notificationId,
        status,
        error,
        topic,
        attemptAt,
        createdAt,
        updatedAt,
      ];
}

class NotificationsByTopicLogsInclude extends _i1.IncludeObject {
  NotificationsByTopicLogsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => NotificationsByTopicLogs.t;
}

class NotificationsByTopicLogsIncludeList extends _i1.IncludeList {
  NotificationsByTopicLogsIncludeList._({
    _i1.WhereExpressionBuilder<NotificationsByTopicLogsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(NotificationsByTopicLogs.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => NotificationsByTopicLogs.t;
}

class NotificationsByTopicLogsRepository {
  const NotificationsByTopicLogsRepository._();

  Future<List<NotificationsByTopicLogs>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationsByTopicLogsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationsByTopicLogsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationsByTopicLogsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<NotificationsByTopicLogs>(
      where: where?.call(NotificationsByTopicLogs.t),
      orderBy: orderBy?.call(NotificationsByTopicLogs.t),
      orderByList: orderByList?.call(NotificationsByTopicLogs.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificationsByTopicLogs?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationsByTopicLogsTable>? where,
    int? offset,
    _i1.OrderByBuilder<NotificationsByTopicLogsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationsByTopicLogsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<NotificationsByTopicLogs>(
      where: where?.call(NotificationsByTopicLogs.t),
      orderBy: orderBy?.call(NotificationsByTopicLogs.t),
      orderByList: orderByList?.call(NotificationsByTopicLogs.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificationsByTopicLogs?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<NotificationsByTopicLogs>(
      id,
      transaction: transaction,
    );
  }

  Future<List<NotificationsByTopicLogs>> insert(
    _i1.Session session,
    List<NotificationsByTopicLogs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<NotificationsByTopicLogs>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificationsByTopicLogs> insertRow(
    _i1.Session session,
    NotificationsByTopicLogs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<NotificationsByTopicLogs>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificationsByTopicLogs>> update(
    _i1.Session session,
    List<NotificationsByTopicLogs> rows, {
    _i1.ColumnSelections<NotificationsByTopicLogsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<NotificationsByTopicLogs>(
      rows,
      columns: columns?.call(NotificationsByTopicLogs.t),
      transaction: transaction,
    );
  }

  Future<NotificationsByTopicLogs> updateRow(
    _i1.Session session,
    NotificationsByTopicLogs row, {
    _i1.ColumnSelections<NotificationsByTopicLogsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<NotificationsByTopicLogs>(
      row,
      columns: columns?.call(NotificationsByTopicLogs.t),
      transaction: transaction,
    );
  }

  Future<List<NotificationsByTopicLogs>> delete(
    _i1.Session session,
    List<NotificationsByTopicLogs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<NotificationsByTopicLogs>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificationsByTopicLogs> deleteRow(
    _i1.Session session,
    NotificationsByTopicLogs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<NotificationsByTopicLogs>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificationsByTopicLogs>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotificationsByTopicLogsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<NotificationsByTopicLogs>(
      where: where(NotificationsByTopicLogs.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationsByTopicLogsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<NotificationsByTopicLogs>(
      where: where?.call(NotificationsByTopicLogs.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
