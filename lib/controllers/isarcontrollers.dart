import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rfid_4/metadata/catalogs/rfidtag.dart';
import 'package:rfid_4/metadata/docs/inventory.dart';
import 'package:rfid_4/metadata/catalogs/wharehouse.dart';

class IzarManager {
  static final IzarManager instance = IzarManager._();
  IzarManager._();

  Future<Isar> _openIsar<T>(
      String name, List<CollectionSchema<T>> schema) async {
    final dir = await getApplicationSupportDirectory();
    final izar = Isar.getInstance(name);

    if (izar != null && izar.isOpen) {
      return izar;
    }

    return Isar.open(
      schema,
      directory: dir.path,
      name: name,
      inspector: true,
    );
  }

  Future<void> closeIsar<T>(Isar izar) async {
    if (!izar.isOpen) {
      return;
    }

    await izar.close();
  }

  Future<Isar> openActivityDB() async {
    return _openIsar('rfid', [
      WharehouseSchema,
      InventorySchema,
      RfidTagSchema,
      InventoryRfidSchema,
      InventoryRfidDocSchema
    ]);
  }
}
