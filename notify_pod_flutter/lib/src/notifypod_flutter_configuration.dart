import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logging/logging.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
final Logger _logger = Logger('notifyPod_flutter_configuration');

/// Background notification handler
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  _showNotification(message);
}

/// Show notification on system
Future<void> _showNotification(
  RemoteMessage message, {
  String channelId = 'default_channel',
  String channelName = 'General Notifications',
  String channelDescription = 'This channel is used for general notifications',
}) async {
  final AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    channelId,
    channelName,
    channelDescription: channelDescription,
    importance: Importance.max,
    priority: Priority.high,
    showWhen: true,
  );

  final DarwinNotificationDetails darwinNotificationDetails =
      DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
  );

  final NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
    iOS: darwinNotificationDetails,
  );

  await flutterLocalNotificationsPlugin.show(
    message.hashCode,
    message.notification?.title ?? 'NotifyPod notification',
    message.notification?.body ?? 'You have new notification',
    notificationDetails,
  );
}

/// NotifyPod configuration
/// this function should be called at the beginning of the app
/// to setup the notification system
/// can receive optional parameters to customize the notification channel
/// default values are:
/// channelId = 'default_channel'
/// channelName = 'General Notifications'
/// channelDescription = 'This channel is used for general notifications'
Future<void> setupNotifyFlutter({
  String channelId = 'default_channel',
  String channelName = 'General Notifications',
  String channelDescription = 'This channel is used for general notifications',
}) async {
  // Initialize Firebase
  await Firebase.initializeApp();

  // Handle background messages
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Initial configuration for local notifications
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  const DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings();

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  // Request permission for notifications
  final settings = await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    criticalAlert: true,
  );
  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    _logger.info('Notification permissions granted.');
  } else {
    _logger.severe('Notification permissions denied.');
  }

  // Listen for foreground notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (message.notification != null) {
      _showNotification(message);
    }
  });
}
