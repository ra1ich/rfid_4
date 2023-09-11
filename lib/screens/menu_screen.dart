import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rfid_4/common_widgets/drawer.dart';
import 'package:rfid_4/controllers/settings/settingsservice.dart';
import 'package:rfid_4/screens/choose_warehouse_screen.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Text("Джинс"),
      ),
      body: Center(
          child: Column(
        children: [
          TextSettings(),
          SizedBox(
            height: 20,
          ),
          FilledButton(
              onPressed: () => Get.to(() => WarehouseChooseScreen()),
              child: Text("Инвентаризация")),
        ],
      )),
    );
  }
}

class TextSettings extends StatelessWidget {
  TextSettings({
    super.key,
  });

  final conn = Get.put(ConnectingSettingsController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return conn.path1C.isEmpty
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cancel,
                  color: Theme.of(context).focusColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Необходиом настроить подключение",
                  style: TextStyle(color: Theme.of(context).focusColor),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.connect_without_contact_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("Настройки подключения установлены",
                    style: TextStyle(color: Theme.of(context).primaryColor)),
              ],
            );
    });
  }
}
