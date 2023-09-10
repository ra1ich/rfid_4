import 'package:isar/isar.dart';

part 'rfidtag.g.dart';

@collection
class RfidTag {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? tag;

  String? itemid;

  String? chId;
}
