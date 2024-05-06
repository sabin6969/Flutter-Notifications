import 'package:flutter/material.dart';
import 'package:flutter_notifications/pages/home_page.dart';
import 'package:flutter_notifications/services/notification_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NotificationServices.globalKey,
      debugShowCheckedModeBanner: false,
      title: "Flutter Notifications",
      home: const HomePage(),
    );
  }
}
