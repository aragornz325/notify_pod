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

abstract class TokenDispositivo
    implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = TokenDispositivoTable();

  static const db = TokenDispositivoRepository._();

  @override
  int? id;

  String token;

  String idCliente;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'token': token,
      'idCliente': idCliente,
    };
  }

  static TokenDispositivoInclude include() {
    return TokenDispositivoInclude._();
  }

  static TokenDispositivoIncludeList includeList({
    _i1.WhereExpressionBuilder<TokenDispositivoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TokenDispositivoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TokenDispositivoTable>? orderByList,
    TokenDispositivoInclude? include,
  }) {
    return TokenDispositivoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TokenDispositivo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TokenDispositivo.t),
      include: include,
    );
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

class TokenDispositivoTable extends _i1.Table {
  TokenDispositivoTable({super.tableRelation})
      : super(tableName: 'token_dispositivo') {
    token = _i1.ColumnString(
      'token',
      this,
    );
    idCliente = _i1.ColumnString(
      'idCliente',
      this,
    );
  }

  late final _i1.ColumnString token;

  late final _i1.ColumnString idCliente;

  @override
  List<_i1.Column> get columns => [
        id,
        token,
        idCliente,
      ];
}

class TokenDispositivoInclude extends _i1.IncludeObject {
  TokenDispositivoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TokenDispositivo.t;
}

class TokenDispositivoIncludeList extends _i1.IncludeList {
  TokenDispositivoIncludeList._({
    _i1.WhereExpressionBuilder<TokenDispositivoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TokenDispositivo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TokenDispositivo.t;
}

class TokenDispositivoRepository {
  const TokenDispositivoRepository._();

  Future<List<TokenDispositivo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TokenDispositivoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TokenDispositivoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TokenDispositivoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TokenDispositivo>(
      where: where?.call(TokenDispositivo.t),
      orderBy: orderBy?.call(TokenDispositivo.t),
      orderByList: orderByList?.call(TokenDispositivo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TokenDispositivo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TokenDispositivoTable>? where,
    int? offset,
    _i1.OrderByBuilder<TokenDispositivoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TokenDispositivoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<TokenDispositivo>(
      where: where?.call(TokenDispositivo.t),
      orderBy: orderBy?.call(TokenDispositivo.t),
      orderByList: orderByList?.call(TokenDispositivo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TokenDispositivo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<TokenDispositivo>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TokenDispositivo>> insert(
    _i1.Session session,
    List<TokenDispositivo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TokenDispositivo>(
      rows,
      transaction: transaction,
    );
  }

  Future<TokenDispositivo> insertRow(
    _i1.Session session,
    TokenDispositivo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TokenDispositivo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TokenDispositivo>> update(
    _i1.Session session,
    List<TokenDispositivo> rows, {
    _i1.ColumnSelections<TokenDispositivoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TokenDispositivo>(
      rows,
      columns: columns?.call(TokenDispositivo.t),
      transaction: transaction,
    );
  }

  Future<TokenDispositivo> updateRow(
    _i1.Session session,
    TokenDispositivo row, {
    _i1.ColumnSelections<TokenDispositivoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TokenDispositivo>(
      row,
      columns: columns?.call(TokenDispositivo.t),
      transaction: transaction,
    );
  }

  Future<List<TokenDispositivo>> delete(
    _i1.Session session,
    List<TokenDispositivo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TokenDispositivo>(
      rows,
      transaction: transaction,
    );
  }

  Future<TokenDispositivo> deleteRow(
    _i1.Session session,
    TokenDispositivo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TokenDispositivo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TokenDispositivo>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TokenDispositivoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TokenDispositivo>(
      where: where(TokenDispositivo.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TokenDispositivoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TokenDispositivo>(
      where: where?.call(TokenDispositivo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
