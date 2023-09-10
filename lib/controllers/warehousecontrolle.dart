import 'dart:convert';

import 'package:get/get.dart';
// import 'package:isar/isar.dart';
// import 'package:rfid_4/controllers/isarcontrollers.dart';
import 'package:rfid_4/controllers/settingscontroller.dart';
import 'package:rfid_4/metadata/catalogs/wharehouse.dart';

class WarehouseController extends GetxController {
  Rx<Wharehouse> currentWarehouse = Wharehouse().obs;
  List<Wharehouse> warehouseList = <Wharehouse>[].obs;

  @override
  void onInit() {
    getWarehouslist();
    super.onInit();
  }

  void getWarehouslist() async {
    // await Future.delayed(Duration(seconds: 2));
    // final isar = await IzarManager.instance.openActivityDB();

    // return await isar.wharehouses.where().findAll();

    // 1. получить в базе
    //2. нет в базе получаем с удаленного сервера
    Response res = await WarehouseProvider().getWarehouses();

    if (res.isOk) {
      List _list = jsonDecode(res.body);

      warehouseList.clear();

      _list.forEach((e) {
        warehouseList.add(Wharehouse()
          ..code = e["itemCode"]
          ..name = e["itemName"]
          ..id1c = e["itemId"]);
      });
    }
  }
}

class WarehouseProvider extends GetConnect {
  SettingsController set = Get.put(SettingsController());
  // Get request

  Future<Response> getWarehouses() {
    String credentials = "${set.login}:${set.psw}";
    String encoded = base64.encode(utf8.encode(credentials));
    Map<String, String> _head = {"Authorization": "Basic $encoded"};

    return get(set.path1C + "/warehouse", headers: _head);
  }
}
