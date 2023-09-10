import 'package:isar/isar.dart';

part 'wharehouse.g.dart';

@collection
class Wharehouse {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? name;

  String? code;
  String? id1c;
}
