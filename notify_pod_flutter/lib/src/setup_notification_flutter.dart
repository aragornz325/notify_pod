import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logging/logging.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
final Logger _logger = Logger('Notify Pod');

Future<void> setupNotifyFlutter() async {
  _logger.info('Configurando notificaciones');
  try {
    // Solicitar permisos de notificaciones para iOS
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // Configuración inicial para iOS
    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    // Configuración inicial para Android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // Configuración para todas las plataformas
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS, // Asegúrate de incluir esta configuración
    );

    // Inicialización del plugin de notificaciones
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        _handleNotificationResponse(response);
      },
    );

    // Manejo de notificaciones en primer plano
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _showForegroundNotification(message);
    });
  } catch (e) {
    _logger.severe('Error al configurar notificaciones: $e');
  }
}

// Manejo de la acción cuando el usuario responde a la notificación
void _handleNotificationResponse(NotificationResponse response) {
  if (response.payload != null) {
    print('Payload de la notificación: ${response.payload}');
  } else {
    print('Notificación seleccionada sin payload.');
  }
}

// Mostrar notificaciones cuando la app está en primer plano
Future<void> _showForegroundNotification(
  RemoteMessage message,
) async {
  try {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'default_channel',
      'General Notifications',
      channelDescription: 'This channel is used for general notifications.',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: DarwinNotificationDetails(),
    );

    await flutterLocalNotificationsPlugin.show(
      message.hashCode,
      message.notification?.title ?? 'Notificación',
      message.notification?.body ?? 'Tienes una nueva notificación',
      notificationDetails,
    );
  } catch (e) {
    _logger.severe('Error al mostrar notificación en primer plano: $e');
  }
}
