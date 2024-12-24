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
import 'dart:async' as _i2;
import 'package:notify_pod_client/src/protocol/enums/devices_type.dart' as _i3;

/// {@category Endpoint}
class EndpointDevice extends _i1.EndpointRef {
  EndpointDevice(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'notify_pod.device';

  _i2.Future<bool> registerFCMToken(
    String tokenFCM,
    String userId,
    String deviceId,
    _i3.DevicesType devicesType,
  ) =>
      caller.callServerEndpoint<bool>(
        'notify_pod.device',
        'registerFCMToken',
        {
          'tokenFCM': tokenFCM,
          'userId': userId,
          'deviceId': deviceId,
          'devicesType': devicesType,
        },
      );
}

/// {@category Endpoint}
class EndpointMessage extends _i1.EndpointRef {
  EndpointMessage(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'notify_pod.message';

  _i2.Future<bool> sendMessageByUserId(
    String userId,
    String message,
    String title,
  ) =>
      caller.callServerEndpoint<bool>(
        'notify_pod.message',
        'sendMessageByUserId',
        {
          'userId': userId,
          'message': message,
          'title': title,
        },
      );
}

/// {@category Endpoint}
class EndpointModule extends _i1.EndpointRef {
  EndpointModule(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'notify_pod.module';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'notify_pod.module',
        'hello',
        {'name': name},
      );

  _i2.Future<bool> registerFCMToken(
    String tokenFCM,
    String userId,
    String deviceId,
    _i3.DevicesType devicesType,
  ) =>
      caller.callServerEndpoint<bool>(
        'notify_pod.module',
        'registerFCMToken',
        {
          'tokenFCM': tokenFCM,
          'userId': userId,
          'deviceId': deviceId,
          'devicesType': devicesType,
        },
      );
}

class Caller extends _i1.ModuleEndpointCaller {
  Caller(_i1.ServerpodClientShared client) : super(client) {
    device = EndpointDevice(this);
    message = EndpointMessage(this);
    module = EndpointModule(this);
  }

  late final EndpointDevice device;

  late final EndpointMessage message;

  late final EndpointModule module;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'notify_pod.device': device,
        'notify_pod.message': message,
        'notify_pod.module': module,
      };
}
