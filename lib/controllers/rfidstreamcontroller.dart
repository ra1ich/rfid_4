import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rfid_4/controllers/inventorycontroller.dart';
import 'package:rfid_4/controllers/rfidtagcontroller.dart';
import 'package:rfid_4/metadata/catalogs/rfidtag.dart';
import 'package:flutter/services.dart';

class RfidStreamController extends GetxController {
  RxList rfidlist = [].obs;

  bool scanRfidteg = false;
  int durationSeconds = 1;

  RxString batteryLevel = "".obs;

  RxBool isRfidScan = false.obs;

  TextEditingController textRfidController = TextEditingController();

  RfidTagController rfidController = Get.put(RfidTagController());
  InventoryController inv = Get.put(InventoryController());

  RxBool isBlutoothScaner = false.obs;

  static const platform = MethodChannel('samples.flutter.dev/battery');

  void getRfid() async {
    try {
      var result = await platform
          .invokeMethod('getRHID', <String, int>{"inventoryMode": 3});

      List mylist = result.split(',');
      batteryLevel.value = '${mylist[1]}';

      String tagString = mylist[1].trim();

      RfidTag rfidTeg = await rfidController.findTeg(tagString);

      rfidlist.addIf(!rfidlist.contains(tagString), tagString);

      inv.putQuantityFact(rfidTeg);
    } on PlatformException catch (e) {
      batteryLevel.value = "Failed to get battery level: '${e.message}'.";
    }
  }

  void getRfidStream(dataStream) async {
    List mylist = dataStream.split(',');

    String tagString = mylist[1].trim();

    RfidTag rfidTeg = await rfidController.findTeg(tagString);

    rfidlist.addIf(!rfidlist.contains(tagString), tagString);

    inv.putQuantityFact(rfidTeg);
  }

  void endRfid() async {
    try {
      await platform.invokeMethod('endRHID', <String, int>{"inventoryMode": 3});
    } on PlatformException catch (e) {
      batteryLevel.value = "Failed to get battery level: '${e.message}'.";
    }
  }

//Включить питание оборудования
  void initRfid() async {
    try {
      await platform
          .invokeMethod('initRHID', <String, int>{"inventoryMode": 3});
    } on PlatformException catch (e) {
      batteryLevel.value = "Failed to get battery level: '${e.message}'.";
    }
  }

  void startScan() {
    isRfidScan.value = true;

    if (isBlutoothScaner.value) {
      startScanBlutoothAsync();
    } else {
      initRfid();
      startScanAsync();
    }
  }

  void stopScan() {
    if (!isBlutoothScaner.value) {
      endRfid();
    }
    isRfidScan.value = false;
  }

  void startScanAsync() async {
    while (isRfidScan.value) {
      await Future.delayed(const Duration(seconds: 1));
      getRfid();
    }
  }

  void startScanBlutoothAsync() async {
    while (isRfidScan.value) {
      await Future.delayed(Duration(seconds: 3));
      String arrayText = textRfidController.text;

      List rfidListText = arrayText.split("\n");

      rfidListText.forEach((element) async {
        String tagString = element.trim();
        RfidTag rfidTeg = await rfidController.findTeg(tagString);

        rfidlist.addIf(!rfidlist.contains(tagString), tagString);

        inv.putQuantityFact(rfidTeg);

        textRfidController.text = "";
      });
    }
  }

  void typeRfidToggle() {
    isBlutoothScaner.value = !isBlutoothScaner.value;
  }

  //Стрим тест
  static const stream = EventChannel(
      'com.chamelalaboratory.demo.flutter_event_channel/eventChannel');

  late StreamSubscription _streamSubscription;
  RxString currentValue = "старт".obs;

  void startListener() {
    initRfid();
    isRfidScan.value = true;
    _streamSubscription = stream.receiveBroadcastStream().listen(listenStream);
  }

  void cancelListener() {
    _streamSubscription.cancel();

    isRfidScan.value = false;

    currentValue.value = "старт";
  }

  void listenStream(value) {
    debugPrint("Received From Native:  $value\n");

    currentValue.value = value;

    getRfidStream(value);
  }

  //Стрим тест
}
