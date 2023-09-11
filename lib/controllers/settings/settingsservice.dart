import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:rfid_4/controllers/isarcontrollers.dart';
import 'package:rfid_4/metadata/settings/connectingsettings.dart';

class ConnectingSettingsController extends GetxService {
  RxString path1C = "".obs;
  String login = "";
  String psw = "";

  TextEditingController path1cController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  TextEditingController pswController = TextEditingController();

  @override
  void onInit() {
    getConnectingSettings();
    super.onInit();
  }

  void getConnectingSettings() async {
    final isar = await IzarManager.instance.openActivityDB();
    var conn =
        await isar.connectingSettings.filter().httppathIsNotEmpty().findFirst();

    if (conn != null) {
      path1C.value = conn.httppath;
      login = conn.login;
      psw = conn.password;

      path1cController.text = path1C.value;
      loginController.text = login;
      pswController.text = psw;
    }
  }

  void setConnectingSettings() async {
    path1C.value = path1cController.text;
    login = loginController.text;
    psw = pswController.text;

    final isar = await IzarManager.instance.openActivityDB();
    await isar.writeTxn(() async {
      await isar.connectingSettings.put(ConnectingSettings()
        ..httppath = path1C.value
        ..login = login
        ..password = psw);
    });
  }
}
