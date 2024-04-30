// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   NotificationService();

//   final _localNotifications = FlutterLocalNotificationsPlugin();

//   Future<void> initializePlatformNotifications() async {
//     const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('ic_stat_justwater');
//     final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings(
//       requestSoundPermission: true,
//       requestBadgePermission: true,
//       requestAlertPermission: true,
//       onDidReceiveLocalNotification: onDidReceiveLocalNotification,
//     );
//     final InitializationSettings initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );
//     await _localNotifications.initialize(initializationSettings);
//   }
// }


// Future<void> scheduleNotification() async {
//   await _localNotifications.schedule(
//     id: 0,
//     title: 'Notification Title',
//     body: 'Notification Body',
//     payload: 'Notification Payload',
//   );
// }


// Future<void> displayNotification() async {
//   await _localNotifications.show(
//     id: 0,
//     title: 'Notification Title',
//     body: 'Notification Body',
//     payload: 'Notification Payload',
//   );
// }

// Future<void> groupNotifications() async {
//   await _localNotifications.group(0, 'Notification Group');
// }

// Future<void> getNotificationDetails() async {
//   final details = await _localNotifications.getNotification(0);
//   print(details);
// }

// Future<void> cancelNotification() async {
//   await _localNotifications.cancel(0);
// }


