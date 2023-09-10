import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rfid_4/common_widgets/drawer.dart';
import 'package:rfid_4/controllers/rfidtagcontroller.dart';
import 'package:rfid_4/controllers/warehousecontrolle.dart';
import 'package:rfid_4/screens/inventory_common_screen.dart';

class WarehouseChooseScreen extends StatelessWidget {
  WarehouseChooseScreen({super.key});

  final WarehouseController wh = Get.put(WarehouseController());
  final RfidTagController rfidtegs = Get.put(RfidTagController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Джинс"),
      ),
      body: Center(
          child: Column(
        children: [
          // FilledButton(
          //     child: Text("Get warehouses"),
          //     onPressed: () {
          //       rfidtegs.getRfidTegs();
          //       wh.getWarehouslist();
          //     }),
          // Obx(() {
          //   return Text(wh.currentWarehouse.value.name ?? "");
          // }),
          const Text("Выберите склад", style: TextStyle(fontSize: 30)),
          WarehouseSelect()
        ],
      )),
    );
  }
}

class WarehouseSelect extends StatelessWidget {
  WarehouseSelect({
    super.key,
  });

  final WarehouseController wh = Get.find<WarehouseController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        if (wh.warehouseList.length == 0) {
          return const Text("Получаем данные с сервера");
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: ListView.builder(
                itemBuilder: (context, index) => FilledButton(
                    child: Text("${wh.warehouseList[index].name}"),
                    onPressed: () {
                      wh.currentWarehouse.value = wh.warehouseList[index];
                      Get.to(() => InventoryCommonScreen());
                    }),
                itemCount: wh.warehouseList.length),
          );
        }
      }),
    );
  }
}
