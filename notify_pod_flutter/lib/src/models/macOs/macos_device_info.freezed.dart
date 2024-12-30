// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'macos_device_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MacOsDeviceInfoModel _$MacOsDeviceInfoModelFromJson(Map<String, dynamic> json) {
  return _MacOsDeviceInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MacOsDeviceInfoModel {
  String get computerName => throw _privateConstructorUsedError;
  String get hostName => throw _privateConstructorUsedError;
  String get arch => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get modelName => throw _privateConstructorUsedError;
  String get kernelVersion => throw _privateConstructorUsedError;
  int get majorVersion => throw _privateConstructorUsedError;
  int get minorVersion => throw _privateConstructorUsedError;
  int get patchVersion => throw _privateConstructorUsedError;
  String get osRelease => throw _privateConstructorUsedError;
  int get activeCPUs => throw _privateConstructorUsedError;
  int get memorySize => throw _privateConstructorUsedError;
  int get cpuFrequency => throw _privateConstructorUsedError;
  String? get systemGUID => throw _privateConstructorUsedError;

  /// Serializes this MacOsDeviceInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MacOsDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MacOsDeviceInfoModelCopyWith<MacOsDeviceInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacOsDeviceInfoModelCopyWith<$Res> {
  factory $MacOsDeviceInfoModelCopyWith(MacOsDeviceInfoModel value,
          $Res Function(MacOsDeviceInfoModel) then) =
      _$MacOsDeviceInfoModelCopyWithImpl<$Res, MacOsDeviceInfoModel>;
  @useResult
  $Res call(
      {String computerName,
      String hostName,
      String arch,
      String model,
      String modelName,
      String kernelVersion,
      int majorVersion,
      int minorVersion,
      int patchVersion,
      String osRelease,
      int activeCPUs,
      int memorySize,
      int cpuFrequency,
      String? systemGUID});
}

/// @nodoc
class _$MacOsDeviceInfoModelCopyWithImpl<$Res,
        $Val extends MacOsDeviceInfoModel>
    implements $MacOsDeviceInfoModelCopyWith<$Res> {
  _$MacOsDeviceInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MacOsDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? computerName = null,
    Object? hostName = null,
    Object? arch = null,
    Object? model = null,
    Object? modelName = null,
    Object? kernelVersion = null,
    Object? majorVersion = null,
    Object? minorVersion = null,
    Object? patchVersion = null,
    Object? osRelease = null,
    Object? activeCPUs = null,
    Object? memorySize = null,
    Object? cpuFrequency = null,
    Object? systemGUID = freezed,
  }) {
    return _then(_value.copyWith(
      computerName: null == computerName
          ? _value.computerName
          : computerName // ignore: cast_nullable_to_non_nullable
              as String,
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      arch: null == arch
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      majorVersion: null == majorVersion
          ? _value.majorVersion
          : majorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      minorVersion: null == minorVersion
          ? _value.minorVersion
          : minorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      patchVersion: null == patchVersion
          ? _value.patchVersion
          : patchVersion // ignore: cast_nullable_to_non_nullable
              as int,
      osRelease: null == osRelease
          ? _value.osRelease
          : osRelease // ignore: cast_nullable_to_non_nullable
              as String,
      activeCPUs: null == activeCPUs
          ? _value.activeCPUs
          : activeCPUs // ignore: cast_nullable_to_non_nullable
              as int,
      memorySize: null == memorySize
          ? _value.memorySize
          : memorySize // ignore: cast_nullable_to_non_nullable
              as int,
      cpuFrequency: null == cpuFrequency
          ? _value.cpuFrequency
          : cpuFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      systemGUID: freezed == systemGUID
          ? _value.systemGUID
          : systemGUID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MacOsDeviceInfoModelImplCopyWith<$Res>
    implements $MacOsDeviceInfoModelCopyWith<$Res> {
  factory _$$MacOsDeviceInfoModelImplCopyWith(_$MacOsDeviceInfoModelImpl value,
          $Res Function(_$MacOsDeviceInfoModelImpl) then) =
      __$$MacOsDeviceInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String computerName,
      String hostName,
      String arch,
      String model,
      String modelName,
      String kernelVersion,
      int majorVersion,
      int minorVersion,
      int patchVersion,
      String osRelease,
      int activeCPUs,
      int memorySize,
      int cpuFrequency,
      String? systemGUID});
}

/// @nodoc
class __$$MacOsDeviceInfoModelImplCopyWithImpl<$Res>
    extends _$MacOsDeviceInfoModelCopyWithImpl<$Res, _$MacOsDeviceInfoModelImpl>
    implements _$$MacOsDeviceInfoModelImplCopyWith<$Res> {
  __$$MacOsDeviceInfoModelImplCopyWithImpl(_$MacOsDeviceInfoModelImpl _value,
      $Res Function(_$MacOsDeviceInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MacOsDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? computerName = null,
    Object? hostName = null,
    Object? arch = null,
    Object? model = null,
    Object? modelName = null,
    Object? kernelVersion = null,
    Object? majorVersion = null,
    Object? minorVersion = null,
    Object? patchVersion = null,
    Object? osRelease = null,
    Object? activeCPUs = null,
    Object? memorySize = null,
    Object? cpuFrequency = null,
    Object? systemGUID = freezed,
  }) {
    return _then(_$MacOsDeviceInfoModelImpl(
      computerName: null == computerName
          ? _value.computerName
          : computerName // ignore: cast_nullable_to_non_nullable
              as String,
      hostName: null == hostName
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      arch: null == arch
          ? _value.arch
          : arch // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      kernelVersion: null == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      majorVersion: null == majorVersion
          ? _value.majorVersion
          : majorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      minorVersion: null == minorVersion
          ? _value.minorVersion
          : minorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      patchVersion: null == patchVersion
          ? _value.patchVersion
          : patchVersion // ignore: cast_nullable_to_non_nullable
              as int,
      osRelease: null == osRelease
          ? _value.osRelease
          : osRelease // ignore: cast_nullable_to_non_nullable
              as String,
      activeCPUs: null == activeCPUs
          ? _value.activeCPUs
          : activeCPUs // ignore: cast_nullable_to_non_nullable
              as int,
      memorySize: null == memorySize
          ? _value.memorySize
          : memorySize // ignore: cast_nullable_to_non_nullable
              as int,
      cpuFrequency: null == cpuFrequency
          ? _value.cpuFrequency
          : cpuFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      systemGUID: freezed == systemGUID
          ? _value.systemGUID
          : systemGUID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacOsDeviceInfoModelImpl implements _MacOsDeviceInfoModel {
  _$MacOsDeviceInfoModelImpl(
      {required this.computerName,
      required this.hostName,
      required this.arch,
      required this.model,
      required this.modelName,
      required this.kernelVersion,
      required this.majorVersion,
      required this.minorVersion,
      required this.patchVersion,
      required this.osRelease,
      required this.activeCPUs,
      required this.memorySize,
      required this.cpuFrequency,
      this.systemGUID});

  factory _$MacOsDeviceInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacOsDeviceInfoModelImplFromJson(json);

  @override
  final String computerName;
  @override
  final String hostName;
  @override
  final String arch;
  @override
  final String model;
  @override
  final String modelName;
  @override
  final String kernelVersion;
  @override
  final int majorVersion;
  @override
  final int minorVersion;
  @override
  final int patchVersion;
  @override
  final String osRelease;
  @override
  final int activeCPUs;
  @override
  final int memorySize;
  @override
  final int cpuFrequency;
  @override
  final String? systemGUID;

  @override
  String toString() {
    return 'MacOsDeviceInfoModel(computerName: $computerName, hostName: $hostName, arch: $arch, model: $model, modelName: $modelName, kernelVersion: $kernelVersion, majorVersion: $majorVersion, minorVersion: $minorVersion, patchVersion: $patchVersion, osRelease: $osRelease, activeCPUs: $activeCPUs, memorySize: $memorySize, cpuFrequency: $cpuFrequency, systemGUID: $systemGUID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacOsDeviceInfoModelImpl &&
            (identical(other.computerName, computerName) ||
                other.computerName == computerName) &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.arch, arch) || other.arch == arch) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.majorVersion, majorVersion) ||
                other.majorVersion == majorVersion) &&
            (identical(other.minorVersion, minorVersion) ||
                other.minorVersion == minorVersion) &&
            (identical(other.patchVersion, patchVersion) ||
                other.patchVersion == patchVersion) &&
            (identical(other.osRelease, osRelease) ||
                other.osRelease == osRelease) &&
            (identical(other.activeCPUs, activeCPUs) ||
                other.activeCPUs == activeCPUs) &&
            (identical(other.memorySize, memorySize) ||
                other.memorySize == memorySize) &&
            (identical(other.cpuFrequency, cpuFrequency) ||
                other.cpuFrequency == cpuFrequency) &&
            (identical(other.systemGUID, systemGUID) ||
                other.systemGUID == systemGUID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      computerName,
      hostName,
      arch,
      model,
      modelName,
      kernelVersion,
      majorVersion,
      minorVersion,
      patchVersion,
      osRelease,
      activeCPUs,
      memorySize,
      cpuFrequency,
      systemGUID);

  /// Create a copy of MacOsDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MacOsDeviceInfoModelImplCopyWith<_$MacOsDeviceInfoModelImpl>
      get copyWith =>
          __$$MacOsDeviceInfoModelImplCopyWithImpl<_$MacOsDeviceInfoModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacOsDeviceInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MacOsDeviceInfoModel implements MacOsDeviceInfoModel {
  factory _MacOsDeviceInfoModel(
      {required final String computerName,
      required final String hostName,
      required final String arch,
      required final String model,
      required final String modelName,
      required final String kernelVersion,
      required final int majorVersion,
      required final int minorVersion,
      required final int patchVersion,
      required final String osRelease,
      required final int activeCPUs,
      required final int memorySize,
      required final int cpuFrequency,
      final String? systemGUID}) = _$MacOsDeviceInfoModelImpl;

  factory _MacOsDeviceInfoModel.fromJson(Map<String, dynamic> json) =
      _$MacOsDeviceInfoModelImpl.fromJson;

  @override
  String get computerName;
  @override
  String get hostName;
  @override
  String get arch;
  @override
  String get model;
  @override
  String get modelName;
  @override
  String get kernelVersion;
  @override
  int get majorVersion;
  @override
  int get minorVersion;
  @override
  int get patchVersion;
  @override
  String get osRelease;
  @override
  int get activeCPUs;
  @override
  int get memorySize;
  @override
  int get cpuFrequency;
  @override
  String? get systemGUID;

  /// Create a copy of MacOsDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MacOsDeviceInfoModelImplCopyWith<_$MacOsDeviceInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
