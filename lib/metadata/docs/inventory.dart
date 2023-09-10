import 'package:isar/isar.dart';

part 'inventory.g.dart';

@collection
class InventoryRfidDoc {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? docNumber;
  String? warehouseId;

  String? docId;
}

@collection
class Inventory {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? docNumber;

  String? itemCode;
  String? itemName;
  String? itemid;
  String? chName;
  String? chId;

  int quantity = 0;
  int quantityFact = 0;

  Map<String, dynamic> toJson() {
    return {
      "itemid": this.itemid,
      "chId": this.chId,
      "quantity": this.quantity,
      "quantityFact": this.quantityFact
    };
  }
}

@collection
class InventoryRfid {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  int? docNumber;

  String? teg;
}
