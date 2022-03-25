import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_ui/screens/mobile_screen.dart';
import 'package:whatsapp_ui/screens/web_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: appBarColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const ResponsiveLayout(
            webScreenLayout: WebScreen(), mobileScreenLayout: MobileScreen()));
  }
}
