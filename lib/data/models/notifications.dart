import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rick_and_morty/main.dart'; // чтобы использовать flutterLocalNotificationsPlugin

Future<void> showNotification(String title, String body) async {
  final androidDetails = AndroidNotificationDetails(
    'favorites_channel',
    'Избранное',
    importance: Importance.max,
    priority: Priority.high,
    icon: 'b',
    sound: RawResourceAndroidNotificationSound('w'),
    enableVibration: true,
  );

  final platformDetails = NotificationDetails(android: androidDetails);

  await flutterLocalNotificationsPlugin.show(
    0,
    title,
    body,
    platformDetails,
  );
}
