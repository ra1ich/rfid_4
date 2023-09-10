import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rfid_4/common_widgets/drawer.dart';
import 'package:rfid_4/screens/choose_warehouse_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Джинс"),
      ),
      body: Center(
          child: FilledButton(
              onPressed: () => Get.to(() => WarehouseChooseScreen()),
              child: Text("Инвентаризация"))),
    );
  }
}
