import 'dart:convert';

import 'package:get/get.dart';
import 'package:isar/isar.dart';

import 'package:rfid_4/controllers/isarcontrollers.dart';
import 'package:rfid_4/controllers/rfidtagcontroller.dart';
import 'package:rfid_4/controllers/settings/settingsservice.dart';

import 'package:rfid_4/controllers/warehousecontrolle.dart';
import 'package:rfid_4/metadata/catalogs/rfidtag.dart';
import 'package:rfid_4/metadata/docs/inventory.dart';

class InventoryController extends GetxController {
  RxList<Inventory> inventoryList = <Inventory>[].obs;
  InventoryRfidDoc docNumber = InventoryRfidDoc();
  RxInt currentDocid = 0.obs;

  RxInt sumQuantity = 0.obs;
  RxInt sumFactQuantity = 0.obs;

  RfidTagController rfidController = Get.put(RfidTagController());
  WarehouseController wh = Get.put(WarehouseController());

  @override
  void onInit() {
    getInvDoc();
    getLeftoverss();
    super.onInit();
  }

  Future<void> getSumQuantity() async {
    final isar = await IzarManager.instance.openActivityDB();
    sumQuantity.value = await isar.inventorys
        .filter()
        .docNumberEqualTo(currentDocid.value)
        .quantityProperty()
        .sum();
  }

  Future<void> getSumFactQuantity() async {
    final isar = await IzarManager.instance.openActivityDB();
    sumFactQuantity.value = await isar.inventorys
        .filter()
        .docNumberEqualTo(currentDocid.value)
        .quantityFactProperty()
        .sum();
  }

  void getInvDoc() async {
    final isar = await IzarManager.instance.openActivityDB();
    docNumber = isar.inventoryRfidDocs
            .filter()
            // .docNumberEqualTo(docNumber)
            // .and()
            .docIdIsNull()
            .findFirstSync() ??
        InventoryRfidDoc()
      ..warehouseId = wh.currentWarehouse.value.id1c;

    await isar.writeTxn(() async {
      currentDocid.value = await isar.inventoryRfidDocs.put(docNumber);
    });
  }

  void getLeftoverss() async {
    //await Future.delayed(Duration(seconds: 2));

    // 1. получить в базе
    //2. нет в базе получаем с удаленного сервера
    Response res = await InventoryeProvider().getLeftoverss();

    if (res.isOk) {
      List _list = jsonDecode(res.body);

      inventoryList.clear();

      _list.forEach((e) {
        inventoryList.add(Inventory()
          ..docNumber = currentDocid.value
          ..itemCode = e["itemCode"]
          ..itemName = e["itemName"]
          ..itemid = e["itemid"]
          ..chName = e["chName"]
          ..chId = e["chId"]
          ..quantity = e["quantity"]);

        sumQuantity = sumQuantity + e["quantity"];
      });

      //put in isar base

      final isar = await IzarManager.instance.openActivityDB();

      await isar.writeTxn(() async {
        await isar.inventorys
            .filter()
            .docNumberEqualTo(currentDocid.value)
            .deleteAll();
        await isar.inventoryRfids
            .filter()
            .docNumberEqualTo(currentDocid.value)
            .deleteAll();
        await isar.inventorys.putAll(inventoryList);
      });
      await getSumQuantity();
      await getSumFactQuantity();
    }
  }

  void putQuantityFact(RfidTag teg) async {
    //if tag is empty return
    if (teg.tag == null || teg.tag == "") {
      return;
    }
    //1.find teg in inventory and put it
    final isar = await IzarManager.instance.openActivityDB();
    var invRfid = isar.inventoryRfids
        .filter()
        .tegEqualTo(teg.tag)
        .and()
        .docNumberEqualTo(currentDocid.value)
        .findFirstSync();

    if (invRfid != null) {
      return;
    }

    invRfid = InventoryRfid()
      ..teg = teg.tag
      ..docNumber = currentDocid.value;

    await isar.writeTxn(() async {
      await isar.inventoryRfids.put(invRfid!);
    });

    //2. add quantity fact in inventory
    //2.1. get id item and ch

    RfidTag rfditag = await rfidController.findTeg(teg.tag!);

    if (rfditag.itemid != "") {
      var inv = isar.inventorys
          .filter()
          .itemidEqualTo(rfditag.itemid)
          .and()
          .chIdEqualTo(rfditag.chId)
          .and()
          .docNumberEqualTo(currentDocid.value)
          .findFirstSync();

      if (inv != null) {
        inv.quantityFact = inv.quantityFact + 1;

        await isar.writeTxn(() async {
          await isar.inventorys.put(inv);
        });

        List<Inventory> _inventoryList = isar.inventorys
            .filter()
            .docNumberEqualTo(currentDocid.value)
            .sortByQuantityFactDesc()
            .findAllSync();

        inventoryList.clear();
        inventoryList.addAll(_inventoryList);
      }
    }

    await getSumFactQuantity();
  }

  void postLeftovers() async {
    Map _postMap = {
      "docId": docNumber.docId,
      "warehouseId": docNumber.warehouseId,
      "leftovers": inventoryList
    };
    Response res =
        await InventoryeProvider().postLeftovers(jsonEncode(_postMap));

    if (res.isOk) {
      Map _mapDoc = jsonDecode(res.body);
      docNumber.docId = _mapDoc["docId"];

      final isar = await IzarManager.instance.openActivityDB();
      await isar.writeTxn(() async {
        await isar.inventoryRfidDocs.put(docNumber);
      });
    }
  }
}

class InventoryeProvider extends GetConnect {
  ConnectingSettingsController set = Get.put(ConnectingSettingsController());
  WarehouseController wh = Get.put(WarehouseController());
  // Get request

  Future<Response> getLeftoverss() {
    String credentials = "${set.login}:${set.psw}";
    String encoded = base64.encode(utf8.encode(credentials));
    Map<String, String> _head = {"Authorization": "Basic $encoded"};

    return get(
        set.path1C + "/leftovers?warehouse=${wh.currentWarehouse.value.name}",
        headers: _head);
  }

  Future<Response> postLeftovers(String jsonBody) {
    String credentials = "${set.login}:${set.psw}";
    String encoded = base64.encode(utf8.encode(credentials));
    Map<String, String> _head = {"Authorization": "Basic $encoded"};

    return post(set.path1C + "/leftovers", jsonBody, headers: _head);
  }
}
