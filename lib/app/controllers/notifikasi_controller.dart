import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class NotifikasiController extends GetxController {
  //TODO: Implement NotifikasiController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void sendNotifikasi() async {
    count.value++;
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            requestAlertPermission: true,
            requestBadgePermission: true,
            requestSoundPermission: true);
    const LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'hello');
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            linux: initializationSettingsLinux);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'high channel', 'High Inportance',
        description: 'This channel', importance: Importance.max);

    // flutterLocalNotificationsPlugin.show(
    //   count.value,
    //   'title${count.value}',
    //   'body',
    //   NotificationDetails(
    //     android: AndroidNotificationDetails(channel.id, channel.name,
    //         channelDescription: channel.description),
    //   ),
    // );

    //////////////////////////////////////////////////////////////////////////

    // const AndroidNotificationDetails androidPlatformChannelSpecifics =
    //     AndroidNotificationDetails('your channel id', 'your channel name',
    //         channelDescription: 'your channel description',
    //         importance: Importance.max,
    //         priority: Priority.high,
    //         ticker: 'ticker');

    // const NotificationDetails platformChannelSpecifics =
    //     NotificationDetails(android: androidPlatformChannelSpecifics);

    // await flutterLocalNotificationsPlugin.show(
    //     0, 'plain title', 'plain body', platformChannelSpecifics,
    //     payload: 'item x');

    /////////////////////////////////////////////////////////////////////////
    // const AndroidNotificationDetails androidPlatformChannelSpecifics =
    //     AndroidNotificationDetails('your channel id', 'your channel name',
    //         channelDescription: 'your channel description',
    //         importance: Importance.max,
    //         priority: Priority.high,
    //         ticker: 'ticker');
    // const NotificationDetails platformChannelSpecifics = NotificationDetails(
    //   android: androidPlatformChannelSpecifics,
    // );
    // await flutterLocalNotificationsPlugin.show(
    //     0, 'plain title', null, platformChannelSpecifics,
    //     payload: 'item x');

    ///////////////////////////////////////////////////////////////////////
    // const AndroidNotificationDetails androidPlatformChannelSpecifics =
    //     AndroidNotificationDetails('your channel id', 'your channel name',
    //         channelDescription: 'your channel description',
    //         importance: Importance.max,
    //         priority: Priority.high,
    //         ticker: 'ticker');
    // const NotificationDetails platformChannelSpecifics = NotificationDetails(
    //   android: androidPlatformChannelSpecifics,
    // );
    // await flutterLocalNotificationsPlugin.show(
    //     0, null, 'plain body', platformChannelSpecifics,
    //     payload: 'item x');

    /////////////////////////////////////////////////////////////////////
    //  await flutterLocalNotificationsPlugin.cancel(0);
//////////////////////////////////////////////////////////////////////
    // await flutterLocalNotificationsPlugin.cancel(0, tag: 'tag');
    // //////////////////////////////////////////////////////////////

    // const AndroidNotificationDetails androidPlatformChannelSpecifics =
    //     AndroidNotificationDetails('no badge channel', 'no badge name',
    //         channelDescription: 'no badge description',
    //         channelShowBadge: false,
    //         importance: Importance.max,
    //         priority: Priority.high,
    //         onlyAlertOnce: true);
    // const NotificationDetails platformChannelSpecifics =
    //     NotificationDetails(android: androidPlatformChannelSpecifics);
    // await flutterLocalNotificationsPlugin.show(
    //     0, 'no badge title', 'no badge body', platformChannelSpecifics,
    //     payload: 'item x');

    ////////////////////////////////////////////////////
    ///
    // const int maxProgress = 5;
    // for (int i = 0; i <= maxProgress; i++) {
    //   await Future<void>.delayed(const Duration(seconds: 1), () async {
    //     final AndroidNotificationDetails androidPlatformChannelSpecifics =
    //         AndroidNotificationDetails('progress channel', 'progress channel',
    //             channelDescription: 'progress channel description',
    //             channelShowBadge: false,
    //             importance: Importance.max,
    //             priority: Priority.high,
    //             onlyAlertOnce: true,
    //             showProgress: true,
    //             maxProgress: maxProgress,
    //             progress: i);
    //     final NotificationDetails platformChannelSpecifics =
    //         NotificationDetails(android: androidPlatformChannelSpecifics);
    //     await flutterLocalNotificationsPlugin.show(
    //         0,
    //         'progress notification title',
    //         'progress notification body',
    //         platformChannelSpecifics,
    //         payload: 'item x');
    //   });
    // }

    //////////////////////////////////////
    final AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      when: DateTime.now().millisecondsSinceEpoch - 120 * 1000,
      usesChronometer: true,
    );
    final NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, 'plain title', 'plain body', platformChannelSpecifics,
        payload: 'item x');
  }
}
