import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rfid_4/controllers/inventorycontroller.dart';
import 'package:rfid_4/controllers/warehousecontrolle.dart';
import 'package:rfid_4/screens/rfidscantestscreen.dart';

class InventoryScreen extends StatelessWidget {
  InventoryScreen({super.key});

  final InventoryController inv = Get.put(InventoryController());
  final WarehouseController wh = Get.find<WarehouseController>();

  TextEditingController _rfidTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Инвентаризация на ${wh.currentWarehouse.value.name}",
            style: TextStyle(fontSize: 16, color: Colors.deepPurple)),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        children: [
          FloatingActionButton.small(
            heroTag: null,
            child: const Icon(Icons.download),
            onPressed: () => Get.to(() => RfidScanTestScreen()),
          ),
          FloatingActionButton.small(
            heroTag: null,
            child: const Icon(Icons.search),
            onPressed: () {
              inv.postLeftovers();
            },
          ),
        ],
      ),
      body: Center(
        child: Obx(() {
          if (inv.inventoryList.isEmpty) {
            return Lottie.network(
                "https://lottie.host/cff12d36-e42d-4d22-893c-828d3a1c406d/7gG9pIG3Mi.json");
          } else {
            return Column(
              children: [
                TextFormField(
                  controller: _rfidTextController,
                  // onFieldSubmitted: (){

                  // },
                ),
                Text("Количество позиций: ${inv.inventoryList.length}"),
                Expanded(
                  child: DataTable2(
                      sortColumnIndex: 1,
                      columns: const [
                        DataColumn2(
                          label: Text('Товар'),
                          size: ColumnSize.L,
                        ),
                        DataColumn2(
                          size: ColumnSize.M,
                          label: Text('Характеристика'),
                        ),
                        DataColumn2(
                            size: ColumnSize.S,
                            label: Text('Кол-во учет'),
                            numeric: true),
                      ],
                      rows: List<DataRow2>.generate(
                          inv.inventoryList.length,
                          (index) => DataRow2(specificRowHeight: 100, cells: [
                                DataCell(Text(
                                    inv.inventoryList[index].itemName ?? "")),
                                DataCell(Text(
                                    inv.inventoryList[index].chName ?? "")),
                                DataCell(Column(
                                  children: [
                                    Text(
                                        "${inv.inventoryList[index].quantity ?? 0}"),
                                    Text(
                                        "${inv.inventoryList[index].quantityFact ?? 0}")
                                  ],
                                )),
                              ]))),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
