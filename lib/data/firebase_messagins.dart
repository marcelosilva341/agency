import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseMessagingProvider {
  final CustomLocalNotification _customLocalNotification;

  FirebaseMessagingProvider._internal(this._customLocalNotification);
  static final FirebaseMessagingProvider _singleton =
      FirebaseMessagingProvider._internal(CustomLocalNotification());

  factory FirebaseMessagingProvider() => _singleton;

  Future<void> init() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
            badge: true, sound: true, alert: true);
    FirebaseMessaging.instance.getInitialMessage().then((value) => null);
    FirebaseMessaging.onMessage.listen((message) {
      final RemoteNotification? notification = message.notification;
      final AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        _customLocalNotification.androidNotification(notification, android);
      }
    });
  }

  Future<String?> getTokenFirebase() async =>
      FirebaseMessaging.instance.getToken();
}

class CustomLocalNotification {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  late AndroidNotificationChannel channel;

  CustomLocalNotification() {
    channel = const AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'This channel is used for import notifications.',
      importance: Importance.high,
    );

    _configAndroid().then(
      (value) {
        flutterLocalNotificationsPlugin = value;
        initializeNotifications();
      },
    );
  }

  Future<FlutterLocalNotificationsPlugin> _configAndroid() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    return flutterLocalNotificationsPlugin;
  }

  void initializeNotifications() {
    const android =
        AndroidInitializationSettings('@drawable/ic_stat_ic_notification');

    final iOS = DarwinInitializationSettings(
      onDidReceiveLocalNotification: (_, __, ___, ____) {},
    );

    flutterLocalNotificationsPlugin
        .initialize(InitializationSettings(android: android, iOS: iOS));
  }

  void androidNotification(
      RemoteNotification notification, AndroidNotification android) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          icon: android.smallIcon,
        ),
      ),
    );
  }
}
