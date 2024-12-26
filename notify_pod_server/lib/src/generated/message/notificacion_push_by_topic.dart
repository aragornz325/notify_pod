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

abstract class NotificacionPushByTopic
    implements _i1.TableRow, _i1.ProtocolSerialization {
  NotificacionPushByTopic._({
    this.id,
    required this.title,
    required this.message,
    required this.topic,
    required this.sendAt,
    required this.status,
    this.readAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificacionPushByTopic({
    int? id,
    required String title,
    required String message,
    required String topic,
    required DateTime sendAt,
    required _i2.NotificationStatus status,
    DateTime? readAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificacionPushByTopicImpl;

  factory NotificacionPushByTopic.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return NotificacionPushByTopic(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      message: jsonSerialization['message'] as String,
      topic: jsonSerialization['topic'] as String,
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

  static final t = NotificacionPushByTopicTable();

  static const db = NotificacionPushByTopicRepository._();

  @override
  int? id;

  String title;

  String message;

  String topic;

  DateTime sendAt;

  _i2.NotificationStatus status;

  DateTime? readAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  NotificacionPushByTopic copyWith({
    int? id,
    String? title,
    String? message,
    String? topic,
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
      'title': title,
      'message': message,
      'topic': topic,
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
      'title': title,
      'message': message,
      'topic': topic,
      'sendAt': sendAt.toJson(),
      'status': status.toJson(),
      if (readAt != null) 'readAt': readAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static NotificacionPushByTopicInclude include() {
    return NotificacionPushByTopicInclude._();
  }

  static NotificacionPushByTopicIncludeList includeList({
    _i1.WhereExpressionBuilder<NotificacionPushByTopicTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificacionPushByTopicTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificacionPushByTopicTable>? orderByList,
    NotificacionPushByTopicInclude? include,
  }) {
    return NotificacionPushByTopicIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(NotificacionPushByTopic.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(NotificacionPushByTopic.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificacionPushByTopicImpl extends NotificacionPushByTopic {
  _NotificacionPushByTopicImpl({
    int? id,
    required String title,
    required String message,
    required String topic,
    required DateTime sendAt,
    required _i2.NotificationStatus status,
    DateTime? readAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          title: title,
          message: message,
          topic: topic,
          sendAt: sendAt,
          status: status,
          readAt: readAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  NotificacionPushByTopic copyWith({
    Object? id = _Undefined,
    String? title,
    String? message,
    String? topic,
    DateTime? sendAt,
    _i2.NotificationStatus? status,
    Object? readAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return NotificacionPushByTopic(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      topic: topic ?? this.topic,
      sendAt: sendAt ?? this.sendAt,
      status: status ?? this.status,
      readAt: readAt is DateTime? ? readAt : this.readAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class NotificacionPushByTopicTable extends _i1.Table {
  NotificacionPushByTopicTable({super.tableRelation})
      : super(tableName: 'serverpod_push_notificacion_by_topic') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    topic = _i1.ColumnString(
      'topic',
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

  late final _i1.ColumnString title;

  late final _i1.ColumnString message;

  late final _i1.ColumnString topic;

  late final _i1.ColumnDateTime sendAt;

  late final _i1.ColumnEnum<_i2.NotificationStatus> status;

  late final _i1.ColumnDateTime readAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        message,
        topic,
        sendAt,
        status,
        readAt,
        createdAt,
        updatedAt,
      ];
}

class NotificacionPushByTopicInclude extends _i1.IncludeObject {
  NotificacionPushByTopicInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => NotificacionPushByTopic.t;
}

class NotificacionPushByTopicIncludeList extends _i1.IncludeList {
  NotificacionPushByTopicIncludeList._({
    _i1.WhereExpressionBuilder<NotificacionPushByTopicTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(NotificacionPushByTopic.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => NotificacionPushByTopic.t;
}

class NotificacionPushByTopicRepository {
  const NotificacionPushByTopicRepository._();

  Future<List<NotificacionPushByTopic>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificacionPushByTopicTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificacionPushByTopicTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificacionPushByTopicTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<NotificacionPushByTopic>(
      where: where?.call(NotificacionPushByTopic.t),
      orderBy: orderBy?.call(NotificacionPushByTopic.t),
      orderByList: orderByList?.call(NotificacionPushByTopic.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificacionPushByTopic?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificacionPushByTopicTable>? where,
    int? offset,
    _i1.OrderByBuilder<NotificacionPushByTopicTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificacionPushByTopicTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<NotificacionPushByTopic>(
      where: where?.call(NotificacionPushByTopic.t),
      orderBy: orderBy?.call(NotificacionPushByTopic.t),
      orderByList: orderByList?.call(NotificacionPushByTopic.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<NotificacionPushByTopic?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<NotificacionPushByTopic>(
      id,
      transaction: transaction,
    );
  }

  Future<List<NotificacionPushByTopic>> insert(
    _i1.Session session,
    List<NotificacionPushByTopic> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<NotificacionPushByTopic>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificacionPushByTopic> insertRow(
    _i1.Session session,
    NotificacionPushByTopic row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<NotificacionPushByTopic>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificacionPushByTopic>> update(
    _i1.Session session,
    List<NotificacionPushByTopic> rows, {
    _i1.ColumnSelections<NotificacionPushByTopicTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<NotificacionPushByTopic>(
      rows,
      columns: columns?.call(NotificacionPushByTopic.t),
      transaction: transaction,
    );
  }

  Future<NotificacionPushByTopic> updateRow(
    _i1.Session session,
    NotificacionPushByTopic row, {
    _i1.ColumnSelections<NotificacionPushByTopicTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<NotificacionPushByTopic>(
      row,
      columns: columns?.call(NotificacionPushByTopic.t),
      transaction: transaction,
    );
  }

  Future<List<NotificacionPushByTopic>> delete(
    _i1.Session session,
    List<NotificacionPushByTopic> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<NotificacionPushByTopic>(
      rows,
      transaction: transaction,
    );
  }

  Future<NotificacionPushByTopic> deleteRow(
    _i1.Session session,
    NotificacionPushByTopic row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<NotificacionPushByTopic>(
      row,
      transaction: transaction,
    );
  }

  Future<List<NotificacionPushByTopic>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotificacionPushByTopicTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<NotificacionPushByTopic>(
      where: where(NotificacionPushByTopic.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificacionPushByTopicTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<NotificacionPushByTopic>(
      where: where?.call(NotificacionPushByTopic.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
