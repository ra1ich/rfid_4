import 'package:flutter/material.dart';

class ConnectSettingsScreen extends StatelessWidget {
  const ConnectSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("путь к базе"),
            Text("Логин"),
            Text("Пароль"),
          ],
        ),
      ),
    );
  }
}
