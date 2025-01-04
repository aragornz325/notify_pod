import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationBell extends StatefulWidget {
  final int notificationCount; // Parámtero para configurar el contador
  final VoidCallback? onTap;

  const NotificationBell({
    Key? key,
    this.notificationCount = 0, // Valor por defecto
    this.onTap,
  }) : super(key: key);

  @override
  _NotificationBellState createState() => _NotificationBellState();
}

class _NotificationBellState extends State<NotificationBell> {
  late int _notificationCount;

  @override
  void initState() {
    super.initState();
    // Inicializa el contador con el valor pasado desde afuera
    _notificationCount = widget.notificationCount;

    // Listener para mensajes de Firebase
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      setState(() {
        _notificationCount++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: widget.onTap,
          iconSize: 30,
        ),
        if (_notificationCount > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                _notificationCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
