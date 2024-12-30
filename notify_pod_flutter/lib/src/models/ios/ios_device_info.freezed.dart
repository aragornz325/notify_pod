// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ios_device_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IosDeviceInfoModel _$IosDeviceInfoModelFromJson(Map<String, dynamic> json) {
  return _IosDeviceInfoModel.fromJson(json);
}

/// @nodoc
mixin _$IosDeviceInfoModel {
  String get name => throw _privateConstructorUsedError;
  String get systemName => throw _privateConstructorUsedError;
  String get systemVersion => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get modelName => throw _privateConstructorUsedError;
  String get localizedModel => throw _privateConstructorUsedError;
  String? get identifierForVendor => throw _privateConstructorUsedError;
  bool get isPhysicalDevice => throw _privateConstructorUsedError;
  bool get isiOSAppOnMac => throw _privateConstructorUsedError;
  String get sysname => throw _privateConstructorUsedError;
  String get nodename => throw _privateConstructorUsedError;
  String get release => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get machine => throw _privateConstructorUsedError;

  /// Serializes this IosDeviceInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IosDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IosDeviceInfoModelCopyWith<IosDeviceInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IosDeviceInfoModelCopyWith<$Res> {
  factory $IosDeviceInfoModelCopyWith(
          IosDeviceInfoModel value, $Res Function(IosDeviceInfoModel) then) =
      _$IosDeviceInfoModelCopyWithImpl<$Res, IosDeviceInfoModel>;
  @useResult
  $Res call(
      {String name,
      String systemName,
      String systemVersion,
      String model,
      String modelName,
      String localizedModel,
      String? identifierForVendor,
      bool isPhysicalDevice,
      bool isiOSAppOnMac,
      String sysname,
      String nodename,
      String release,
      String version,
      String machine});
}

/// @nodoc
class _$IosDeviceInfoModelCopyWithImpl<$Res, $Val extends IosDeviceInfoModel>
    implements $IosDeviceInfoModelCopyWith<$Res> {
  _$IosDeviceInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IosDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? systemName = null,
    Object? systemVersion = null,
    Object? model = null,
    Object? modelName = null,
    Object? localizedModel = null,
    Object? identifierForVendor = freezed,
    Object? isPhysicalDevice = null,
    Object? isiOSAppOnMac = null,
    Object? sysname = null,
    Object? nodename = null,
    Object? release = null,
    Object? version = null,
    Object? machine = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      systemName: null == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: null == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      localizedModel: null == localizedModel
          ? _value.localizedModel
          : localizedModel // ignore: cast_nullable_to_non_nullable
              as String,
      identifierForVendor: freezed == identifierForVendor
          ? _value.identifierForVendor
          : identifierForVendor // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      isiOSAppOnMac: null == isiOSAppOnMac
          ? _value.isiOSAppOnMac
          : isiOSAppOnMac // ignore: cast_nullable_to_non_nullable
              as bool,
      sysname: null == sysname
          ? _value.sysname
          : sysname // ignore: cast_nullable_to_non_nullable
              as String,
      nodename: null == nodename
          ? _value.nodename
          : nodename // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IosDeviceInfoModelImplCopyWith<$Res>
    implements $IosDeviceInfoModelCopyWith<$Res> {
  factory _$$IosDeviceInfoModelImplCopyWith(_$IosDeviceInfoModelImpl value,
          $Res Function(_$IosDeviceInfoModelImpl) then) =
      __$$IosDeviceInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String systemName,
      String systemVersion,
      String model,
      String modelName,
      String localizedModel,
      String? identifierForVendor,
      bool isPhysicalDevice,
      bool isiOSAppOnMac,
      String sysname,
      String nodename,
      String release,
      String version,
      String machine});
}

/// @nodoc
class __$$IosDeviceInfoModelImplCopyWithImpl<$Res>
    extends _$IosDeviceInfoModelCopyWithImpl<$Res, _$IosDeviceInfoModelImpl>
    implements _$$IosDeviceInfoModelImplCopyWith<$Res> {
  __$$IosDeviceInfoModelImplCopyWithImpl(_$IosDeviceInfoModelImpl _value,
      $Res Function(_$IosDeviceInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of IosDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? systemName = null,
    Object? systemVersion = null,
    Object? model = null,
    Object? modelName = null,
    Object? localizedModel = null,
    Object? identifierForVendor = freezed,
    Object? isPhysicalDevice = null,
    Object? isiOSAppOnMac = null,
    Object? sysname = null,
    Object? nodename = null,
    Object? release = null,
    Object? version = null,
    Object? machine = null,
  }) {
    return _then(_$IosDeviceInfoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      systemName: null == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: null == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelName: null == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String,
      localizedModel: null == localizedModel
          ? _value.localizedModel
          : localizedModel // ignore: cast_nullable_to_non_nullable
              as String,
      identifierForVendor: freezed == identifierForVendor
          ? _value.identifierForVendor
          : identifierForVendor // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhysicalDevice: null == isPhysicalDevice
          ? _value.isPhysicalDevice
          : isPhysicalDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      isiOSAppOnMac: null == isiOSAppOnMac
          ? _value.isiOSAppOnMac
          : isiOSAppOnMac // ignore: cast_nullable_to_non_nullable
              as bool,
      sysname: null == sysname
          ? _value.sysname
          : sysname // ignore: cast_nullable_to_non_nullable
              as String,
      nodename: null == nodename
          ? _value.nodename
          : nodename // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      machine: null == machine
          ? _value.machine
          : machine // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IosDeviceInfoModelImpl implements _IosDeviceInfoModel {
  _$IosDeviceInfoModelImpl(
      {required this.name,
      required this.systemName,
      required this.systemVersion,
      required this.model,
      required this.modelName,
      required this.localizedModel,
      this.identifierForVendor,
      required this.isPhysicalDevice,
      required this.isiOSAppOnMac,
      required this.sysname,
      required this.nodename,
      required this.release,
      required this.version,
      required this.machine});

  factory _$IosDeviceInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IosDeviceInfoModelImplFromJson(json);

  @override
  final String name;
  @override
  final String systemName;
  @override
  final String systemVersion;
  @override
  final String model;
  @override
  final String modelName;
  @override
  final String localizedModel;
  @override
  final String? identifierForVendor;
  @override
  final bool isPhysicalDevice;
  @override
  final bool isiOSAppOnMac;
  @override
  final String sysname;
  @override
  final String nodename;
  @override
  final String release;
  @override
  final String version;
  @override
  final String machine;

  @override
  String toString() {
    return 'IosDeviceInfoModel(name: $name, systemName: $systemName, systemVersion: $systemVersion, model: $model, modelName: $modelName, localizedModel: $localizedModel, identifierForVendor: $identifierForVendor, isPhysicalDevice: $isPhysicalDevice, isiOSAppOnMac: $isiOSAppOnMac, sysname: $sysname, nodename: $nodename, release: $release, version: $version, machine: $machine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IosDeviceInfoModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.localizedModel, localizedModel) ||
                other.localizedModel == localizedModel) &&
            (identical(other.identifierForVendor, identifierForVendor) ||
                other.identifierForVendor == identifierForVendor) &&
            (identical(other.isPhysicalDevice, isPhysicalDevice) ||
                other.isPhysicalDevice == isPhysicalDevice) &&
            (identical(other.isiOSAppOnMac, isiOSAppOnMac) ||
                other.isiOSAppOnMac == isiOSAppOnMac) &&
            (identical(other.sysname, sysname) || other.sysname == sysname) &&
            (identical(other.nodename, nodename) ||
                other.nodename == nodename) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.machine, machine) || other.machine == machine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      systemName,
      systemVersion,
      model,
      modelName,
      localizedModel,
      identifierForVendor,
      isPhysicalDevice,
      isiOSAppOnMac,
      sysname,
      nodename,
      release,
      version,
      machine);

  /// Create a copy of IosDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IosDeviceInfoModelImplCopyWith<_$IosDeviceInfoModelImpl> get copyWith =>
      __$$IosDeviceInfoModelImplCopyWithImpl<_$IosDeviceInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IosDeviceInfoModelImplToJson(
      this,
    );
  }
}

abstract class _IosDeviceInfoModel implements IosDeviceInfoModel {
  factory _IosDeviceInfoModel(
      {required final String name,
      required final String systemName,
      required final String systemVersion,
      required final String model,
      required final String modelName,
      required final String localizedModel,
      final String? identifierForVendor,
      required final bool isPhysicalDevice,
      required final bool isiOSAppOnMac,
      required final String sysname,
      required final String nodename,
      required final String release,
      required final String version,
      required final String machine}) = _$IosDeviceInfoModelImpl;

  factory _IosDeviceInfoModel.fromJson(Map<String, dynamic> json) =
      _$IosDeviceInfoModelImpl.fromJson;

  @override
  String get name;
  @override
  String get systemName;
  @override
  String get systemVersion;
  @override
  String get model;
  @override
  String get modelName;
  @override
  String get localizedModel;
  @override
  String? get identifierForVendor;
  @override
  bool get isPhysicalDevice;
  @override
  bool get isiOSAppOnMac;
  @override
  String get sysname;
  @override
  String get nodename;
  @override
  String get release;
  @override
  String get version;
  @override
  String get machine;

  /// Create a copy of IosDeviceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IosDeviceInfoModelImplCopyWith<_$IosDeviceInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
