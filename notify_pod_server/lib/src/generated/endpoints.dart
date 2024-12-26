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
import '../endpoints/devices/device_endpoint.dart' as _i2;
import '../endpoints/messages/notificacion_push_endpoint.dart' as _i3;
import '../endpoints/module_endpoint.dart' as _i4;
import 'package:notify_pod_server/src/generated/enums/devices_type.dart' as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'device': _i2.DeviceEndpoint()
        ..initialize(
          server,
          'device',
          'notify_pod',
        ),
      'message': _i3.MessageEndpoint()
        ..initialize(
          server,
          'message',
          'notify_pod',
        ),
      'module': _i4.ModuleEndpoint()
        ..initialize(
          server,
          'module',
          'notify_pod',
        ),
    };
    connectors['device'] = _i1.EndpointConnector(
      name: 'device',
      endpoint: endpoints['device']!,
      methodConnectors: {
        'registerDevice': _i1.MethodConnector(
          name: 'registerDevice',
          params: {
            'tokenFCM': _i1.ParameterDescription(
              name: 'tokenFCM',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'deviceId': _i1.ParameterDescription(
              name: 'deviceId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'devicesType': _i1.ParameterDescription(
              name: 'devicesType',
              type: _i1.getType<_i5.DevicesType>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['device'] as _i2.DeviceEndpoint).registerDevice(
            session,
            params['tokenFCM'],
            params['userId'],
            params['deviceId'],
            params['devicesType'],
          ),
        )
      },
    );
    connectors['message'] = _i1.EndpointConnector(
      name: 'message',
      endpoint: endpoints['message']!,
      methodConnectors: {
        'sendPushNotificationByUserId': _i1.MethodConnector(
          name: 'sendPushNotificationByUserId',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['message'] as _i3.MessageEndpoint)
                  .sendPushNotificationByUserId(
            session,
            params['userId'],
            params['message'],
            params['title'],
          ),
        ),
        'sendPushNotificationByTopic': _i1.MethodConnector(
          name: 'sendPushNotificationByTopic',
          params: {
            'topic': _i1.ParameterDescription(
              name: 'topic',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['message'] as _i3.MessageEndpoint)
                  .sendPushNotificationByTopic(
            session,
            params['topic'],
            params['message'],
            params['title'],
          ),
        ),
      },
    );
    connectors['module'] = _i1.EndpointConnector(
      name: 'module',
      endpoint: endpoints['module']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['module'] as _i4.ModuleEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'registerFCMToken': _i1.MethodConnector(
          name: 'registerFCMToken',
          params: {
            'tokenFCM': _i1.ParameterDescription(
              name: 'tokenFCM',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'deviceId': _i1.ParameterDescription(
              name: 'deviceId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'devicesType': _i1.ParameterDescription(
              name: 'devicesType',
              type: _i1.getType<_i5.DevicesType>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['module'] as _i4.ModuleEndpoint).registerFCMToken(
            session,
            params['tokenFCM'],
            params['userId'],
            params['deviceId'],
            params['devicesType'],
          ),
        ),
      },
    );
  }
}
