import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFFF3F5F7),
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Travel UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF3EBACE),
          colorScheme: const ColorScheme.light().copyWith(
            primary: const Color(0xFF3EBACE),
            secondary: const Color(0xFFD8ECF1),
          ),
          scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        ),
        home: const HomeScreen());
  }
}
