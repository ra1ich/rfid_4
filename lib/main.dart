import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rfid_4/screens/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      title: 'Джинс',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 92, 44, 175)),
        useMaterial3: true,
      ),
      home: MenuScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => MenuScreen(),
        ),
      ],
    );
  }
}
