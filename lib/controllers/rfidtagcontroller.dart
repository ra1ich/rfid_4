import 'dart:convert';

import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:rfid_4/controllers/isarcontrollers.dart';
import 'package:rfid_4/controllers/settings/settingsservice.dart';

import 'package:rfid_4/metadata/catalogs/rfidtag.dart';

class RfidTagController extends GetxController {
  List<RfidTag> rfidtagList = <RfidTag>[].obs;

  @override
  void onInit() {
    getRfidTegs();
    super.onInit();
  }

  void getRfidTegs() async {
    //await Future.delayed(Duration(seconds: 2));

    // 1. получить в базе
    //2. нет в базе получаем с удаленного сервера
    Response res = await RfidtagProvider().getRfidTegs();

    if (res.isOk) {
      List list = jsonDecode(res.body);

      rfidtagList.clear();

      list.forEach((e) {
        rfidtagList.add(RfidTag()
          ..tag = e["rfidTeg"]
          ..itemid = e["itemId"]
          ..chId = e["chId"]);
      });

      //put in isar base

      final isar = await IzarManager.instance.openActivityDB();
      await isar.rfidTags.filter().tagIsNotEmpty().deleteAll();
      await isar.writeTxn(() async {
        await isar.rfidTags.putAll(rfidtagList);
      });
    }
  }

  Future<RfidTag> findTeg(String teg) async {
    final isar = await IzarManager.instance.openActivityDB();
    RfidTag findteg =
        isar.rfidTags.filter().tagEqualTo(teg).findFirstSync() ?? RfidTag()
          ..tag = teg;
    return findteg;
  }
}

class RfidtagProvider extends GetConnect {
  ConnectingSettingsController set = Get.put(ConnectingSettingsController());

  // Get request

  Future<Response> getRfidTegs() {
    String credentials = "${set.login}:${set.psw}";
    String encoded = base64.encode(utf8.encode(credentials));
    Map<String, String> _head = {"Authorization": "Basic $encoded"};

    return get(set.path1C + "/rfidtegs", headers: _head);
  }
}
