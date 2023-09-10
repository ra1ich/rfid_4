import 'package:get/get.dart';
import 'package:rfid_4/controllers/inventorycontroller.dart';
import 'package:rfid_4/controllers/rfidtagcontroller.dart';
import 'package:rfid_4/metadata/catalogs/rfidtag.dart';

class RfidStreamTestController extends GetxController {
  RxList<RfidTag> rfidlist = <RfidTag>[].obs;

  bool scanRfidteg = false;
  int durationSeconds = 5;

  RfidTagController _rfidController = Get.put(RfidTagController());
  InventoryController _inv = Get.put(InventoryController());

  List _rfidArray = [
    "9D00C246555555559D00C246,56,trht",
    "9D00C24A555555559D00C24A,2",
    "9D00C24E555555559D00C24E,3,8348374"
  ];

  void startScanRfid() async {
    scanRfidteg = true;

    while (scanRfidteg) {
      await Future.delayed(Duration(seconds: durationSeconds));
      rfidlist.clear();

      _rfidArray.forEach((element) async {
        List _mylist = element.split(',');

        RfidTag _rfidTeg = await _rfidController.findTeg(_mylist[0]);

        rfidlist.add(_rfidTeg);

        _inv.putQuantityFact(_rfidTeg);

        scanRfidteg = false;
      });
    }
  }

  void endtScanRfid() {
    rfidlist.clear();
    scanRfidteg = false;
  }
}
