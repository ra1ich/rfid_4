import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rfid_4/controllers/settings/settingsservice.dart';
import 'package:rfid_4/screens/menu_screen.dart';

class ConnectSettingsScreen extends StatelessWidget {
  ConnectSettingsScreen({super.key});

  final conn = Get.put(ConnectingSettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Настройки подключения"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TextInputSettings("Путь к 1С", conn.path1cController),
              TextInputSettings("Логин", conn.loginController),
              TextInputSettings("Пароль", conn.pswController),
              FilledButton(
                  onPressed: () {
                    conn.setConnectingSettings();
                    Get.toEnd(() => MenuScreen());
                  },
                  child: Text("Сохранить"))
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputSettings extends StatelessWidget {
  const TextInputSettings(this._labelText, this._textController, {super.key});

  final String _labelText;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textController,
      decoration: InputDecoration(labelText: _labelText),
    );
  }
}
