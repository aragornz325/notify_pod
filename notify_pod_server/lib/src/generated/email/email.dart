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

abstract class EmailPod implements _i1.TableRow, _i1.ProtocolSerialization {
  EmailPod._({
    this.id,
    required this.email,
    required this.subject,
    required this.body,
    required this.createdAt,
    required this.emailStatus,
    required this.logoUuid,
    this.sentAt,
    this.followUpAt,
    this.readOn,
  });

  factory EmailPod({
    int? id,
    required String email,
    required String subject,
    required String body,
    required DateTime createdAt,
    required _i2.NotificationStatus emailStatus,
    required String logoUuid,
    DateTime? sentAt,
    DateTime? followUpAt,
    DateTime? readOn,
  }) = _EmailPodImpl;

  factory EmailPod.fromJson(Map<String, dynamic> jsonSerialization) {
    return EmailPod(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      subject: jsonSerialization['subject'] as String,
      body: jsonSerialization['body'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      emailStatus: _i2.NotificationStatus.fromJson(
          (jsonSerialization['emailStatus'] as int)),
      logoUuid: jsonSerialization['logoUuid'] as String,
      sentAt: jsonSerialization['sentAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['sentAt']),
      followUpAt: jsonSerialization['followUpAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['followUpAt']),
      readOn: jsonSerialization['readOn'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['readOn']),
    );
  }

  static final t = EmailPodTable();

  static const db = EmailPodRepository._();

  @override
  int? id;

  String email;

  String subject;

  String body;

  DateTime createdAt;

  _i2.NotificationStatus emailStatus;

  String logoUuid;

  DateTime? sentAt;

  DateTime? followUpAt;

  DateTime? readOn;

  @override
  _i1.Table get table => t;

  EmailPod copyWith({
    int? id,
    String? email,
    String? subject,
    String? body,
    DateTime? createdAt,
    _i2.NotificationStatus? emailStatus,
    String? logoUuid,
    DateTime? sentAt,
    DateTime? followUpAt,
    DateTime? readOn,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'email': email,
      'subject': subject,
      'body': body,
      'createdAt': createdAt.toJson(),
      'emailStatus': emailStatus.toJson(),
      'logoUuid': logoUuid,
      if (sentAt != null) 'sentAt': sentAt?.toJson(),
      if (followUpAt != null) 'followUpAt': followUpAt?.toJson(),
      if (readOn != null) 'readOn': readOn?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'email': email,
      'subject': subject,
      'body': body,
      'createdAt': createdAt.toJson(),
      'emailStatus': emailStatus.toJson(),
      'logoUuid': logoUuid,
      if (sentAt != null) 'sentAt': sentAt?.toJson(),
      if (followUpAt != null) 'followUpAt': followUpAt?.toJson(),
      if (readOn != null) 'readOn': readOn?.toJson(),
    };
  }

  static EmailPodInclude include() {
    return EmailPodInclude._();
  }

  static EmailPodIncludeList includeList({
    _i1.WhereExpressionBuilder<EmailPodTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmailPodTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmailPodTable>? orderByList,
    EmailPodInclude? include,
  }) {
    return EmailPodIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EmailPod.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EmailPod.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmailPodImpl extends EmailPod {
  _EmailPodImpl({
    int? id,
    required String email,
    required String subject,
    required String body,
    required DateTime createdAt,
    required _i2.NotificationStatus emailStatus,
    required String logoUuid,
    DateTime? sentAt,
    DateTime? followUpAt,
    DateTime? readOn,
  }) : super._(
          id: id,
          email: email,
          subject: subject,
          body: body,
          createdAt: createdAt,
          emailStatus: emailStatus,
          logoUuid: logoUuid,
          sentAt: sentAt,
          followUpAt: followUpAt,
          readOn: readOn,
        );

  @override
  EmailPod copyWith({
    Object? id = _Undefined,
    String? email,
    String? subject,
    String? body,
    DateTime? createdAt,
    _i2.NotificationStatus? emailStatus,
    String? logoUuid,
    Object? sentAt = _Undefined,
    Object? followUpAt = _Undefined,
    Object? readOn = _Undefined,
  }) {
    return EmailPod(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      subject: subject ?? this.subject,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      emailStatus: emailStatus ?? this.emailStatus,
      logoUuid: logoUuid ?? this.logoUuid,
      sentAt: sentAt is DateTime? ? sentAt : this.sentAt,
      followUpAt: followUpAt is DateTime? ? followUpAt : this.followUpAt,
      readOn: readOn is DateTime? ? readOn : this.readOn,
    );
  }
}

class EmailPodTable extends _i1.Table {
  EmailPodTable({super.tableRelation})
      : super(tableName: 'serverpod_notifications_emails') {
    email = _i1.ColumnString(
      'email',
      this,
    );
    subject = _i1.ColumnString(
      'subject',
      this,
    );
    body = _i1.ColumnString(
      'body',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    emailStatus = _i1.ColumnEnum(
      'emailStatus',
      this,
      _i1.EnumSerialization.byIndex,
    );
    logoUuid = _i1.ColumnString(
      'logoUuid',
      this,
    );
    sentAt = _i1.ColumnDateTime(
      'sentAt',
      this,
    );
    followUpAt = _i1.ColumnDateTime(
      'followUpAt',
      this,
    );
    readOn = _i1.ColumnDateTime(
      'readOn',
      this,
    );
  }

  late final _i1.ColumnString email;

  late final _i1.ColumnString subject;

  late final _i1.ColumnString body;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnEnum<_i2.NotificationStatus> emailStatus;

  late final _i1.ColumnString logoUuid;

  late final _i1.ColumnDateTime sentAt;

  late final _i1.ColumnDateTime followUpAt;

  late final _i1.ColumnDateTime readOn;

  @override
  List<_i1.Column> get columns => [
        id,
        email,
        subject,
        body,
        createdAt,
        emailStatus,
        logoUuid,
        sentAt,
        followUpAt,
        readOn,
      ];
}

class EmailPodInclude extends _i1.IncludeObject {
  EmailPodInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => EmailPod.t;
}

class EmailPodIncludeList extends _i1.IncludeList {
  EmailPodIncludeList._({
    _i1.WhereExpressionBuilder<EmailPodTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EmailPod.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EmailPod.t;
}

class EmailPodRepository {
  const EmailPodRepository._();

  Future<List<EmailPod>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmailPodTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmailPodTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmailPodTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EmailPod>(
      where: where?.call(EmailPod.t),
      orderBy: orderBy?.call(EmailPod.t),
      orderByList: orderByList?.call(EmailPod.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EmailPod?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmailPodTable>? where,
    int? offset,
    _i1.OrderByBuilder<EmailPodTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmailPodTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<EmailPod>(
      where: where?.call(EmailPod.t),
      orderBy: orderBy?.call(EmailPod.t),
      orderByList: orderByList?.call(EmailPod.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EmailPod?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<EmailPod>(
      id,
      transaction: transaction,
    );
  }

  Future<List<EmailPod>> insert(
    _i1.Session session,
    List<EmailPod> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<EmailPod>(
      rows,
      transaction: transaction,
    );
  }

  Future<EmailPod> insertRow(
    _i1.Session session,
    EmailPod row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<EmailPod>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EmailPod>> update(
    _i1.Session session,
    List<EmailPod> rows, {
    _i1.ColumnSelections<EmailPodTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<EmailPod>(
      rows,
      columns: columns?.call(EmailPod.t),
      transaction: transaction,
    );
  }

  Future<EmailPod> updateRow(
    _i1.Session session,
    EmailPod row, {
    _i1.ColumnSelections<EmailPodTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<EmailPod>(
      row,
      columns: columns?.call(EmailPod.t),
      transaction: transaction,
    );
  }

  Future<List<EmailPod>> delete(
    _i1.Session session,
    List<EmailPod> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EmailPod>(
      rows,
      transaction: transaction,
    );
  }

  Future<EmailPod> deleteRow(
    _i1.Session session,
    EmailPod row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<EmailPod>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EmailPod>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmailPodTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<EmailPod>(
      where: where(EmailPod.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmailPodTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EmailPod>(
      where: where?.call(EmailPod.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
