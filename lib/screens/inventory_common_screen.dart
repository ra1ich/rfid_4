import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rfid_4/controllers/inventorycontroller.dart';
import 'package:rfid_4/controllers/rfidstreamcontroller.dart';
import 'package:rfid_4/controllers/warehousecontrolle.dart';

class InventoryCommonScreen extends StatelessWidget {
  InventoryCommonScreen({super.key});

  final InventoryController inv = Get.put(InventoryController());
  final WarehouseController wh = Get.find<WarehouseController>();
  final RfidStreamController rfid = Get.put(RfidStreamController());

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event.logicalKey.keyLabel == "Game Button 4") {
          print("нажали курок");
          if (!rfid.isRfidScan.value) {
            rfid.startScan();
          } else {
            rfid.stopScan();
          }
        }
        print("${event.logicalKey} and ${event.physicalKey}");
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Инвентаризация на ${wh.currentWarehouse.value.name}",
              style: TextStyle(fontSize: 16, color: Colors.deepPurple)),
        ),
        body: Center(
          child: Obx(() {
            if (inv.inventoryList.isEmpty) {
              return Lottie.network(
                  "https://lottie.host/cff12d36-e42d-4d22-893c-828d3a1c406d/7gG9pIG3Mi.json");
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(flex: 1, child: InvInfo()),
                    Expanded(
                        child: rfid.isBlutoothScaner.value
                            ? InvRfidBluetooth()
                            : InvRfidHard())
                  ],
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}

class InvInfo extends StatelessWidget {
  InvInfo({
    super.key,
  });

  final InventoryController inv = Get.find<InventoryController>();
  final WarehouseController wh = Get.find<WarehouseController>();
  final RfidStreamController rfid = Get.find<RfidStreamController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilledButton(
            child: Text("Передать в 1С"),
            onPressed: () => inv.postLeftovers(),
          ),
          ListTile(
            title: Text("Инвентаризация #${inv.currentDocid.value}"),
            subtitle: Text("${wh.currentWarehouse.value.name}"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Количество позиций: ${inv.sumQuantity}"),
                Text("Количество позиций факт: ${inv.sumFactQuantity}"),
                Text("Количество отсканировано: ${rfid.rfidlist.length}"),
              ],
            ),
          ),
        ],
      ));
    });
  }
}

class InvRfidHard extends StatelessWidget {
  InvRfidHard({
    super.key,
  });

  final InventoryController inv = Get.find<InventoryController>();
  final WarehouseController wh = Get.find<WarehouseController>();
  final RfidStreamController rfid = Get.find<RfidStreamController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Card(
          child: Flex(direction: Axis.horizontal, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Switch(
                    value: rfid.isBlutoothScaner.value,
                    onChanged: (isBlutoothScaner) => rfid.typeRfidToggle()),
                Icon(
                  Icons.bluetooth,
                  color: Theme.of(context).focusColor,
                )
              ],
            ),
            Text("Будет рабоать с оборудованием")
          ],
        ),
      ]));
    });
  }
}

class InvRfidBluetooth extends StatelessWidget {
  InvRfidBluetooth({
    super.key,
  });

  final InventoryController inv = Get.find<InventoryController>();
  final WarehouseController wh = Get.find<WarehouseController>();
  final RfidStreamController rfid = Get.find<RfidStreamController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Switch(
                  value: rfid.isBlutoothScaner.value,
                  onChanged: (isBlutoothScaner) => rfid.typeRfidToggle()),
              Icon(
                Icons.bluetooth,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !rfid.isRfidScan.value
                  ? ElevatedButton(
                      onPressed: () => rfid.startScan(),
                      child: Text("начать сканироание"))
                  : Row(children: [
                      ElevatedButton(
                          onPressed: () => rfid.stopScan(),
                          child: Text("Остановить сканироание")),
                      Text("Идет сканирование")
                    ])
            ],
          ),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: rfid.textRfidController,
            ),
          )
        ],
      ));
    });
  }
}
