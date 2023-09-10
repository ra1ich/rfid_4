import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rfid_4/controllers/rfidstreamcontroller.dart';

import 'package:rfid_4/controllers/rfidstreamtestcontroller.dart';

class RfidScanTestScreen extends StatelessWidget {
  RfidScanTestScreen({super.key});

  final RfidStreamTestController rfidTest = Get.put(RfidStreamTestController());
  final RfidStreamController rfid = Get.put(RfidStreamController());

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        print("${event.logicalKey} and ${event.physicalKey}");
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Тестирование RFID сканера",
              style: TextStyle(fontSize: 16, color: Colors.deepPurple)),
        ),
        floatingActionButton: FloatingActionButton(
            child: rfidTest.scanRfidteg
                ? Icon(Icons.pause)
                : Icon(Icons.play_arrow),
            onPressed: () {
              if (!rfid.isRfidScan.value) {
                rfid.startScan();
              } else {
                rfid.stopScan();
              }
              // if (rfidTest.scanRfidteg) {
              //   rfidTest.endtScanRfid();

              // } else {
              //   rfidTest.startScanRfid();
              // }
            }),
        body: Center(
          child: Obx(() {
            if (rfid.rfidlist.isEmpty) {
              return Lottie.network(
                  "https://lottie.host/cff12d36-e42d-4d22-893c-828d3a1c406d/7gG9pIG3Mi.json");
            } else {
              return Column(
                children: [
                  Text(rfid.batteryLevel.toString()),
                  Text("Количество позиций: ${rfidTest.rfidlist.length}"),
                  Expanded(
                    child: DataTable2(
                        sortColumnIndex: 1,
                        columns: const [
                          DataColumn2(
                            label: Text('ID'),
                            size: ColumnSize.L,
                          ),
                          DataColumn2(
                            label: Text('Товар'),
                            size: ColumnSize.L,
                          ),
                          DataColumn2(
                            size: ColumnSize.M,
                            label: Text('Характеристика'),
                          ),
                        ],
                        rows: List<DataRow2>.generate(
                            rfid.rfidlist.length,
                            (index) => DataRow2(specificRowHeight: 100, cells: [
                                  DataCell(
                                      Text(rfid.rfidlist[index].tag ?? "")),
                                  DataCell(
                                      Text(rfid.rfidlist[index].itemid ?? "0")),
                                  DataCell(
                                      Text(rfid.rfidlist[index].chId ?? "0")),
                                ]))),
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
