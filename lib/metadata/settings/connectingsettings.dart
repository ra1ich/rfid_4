import 'package:isar/isar.dart';

part 'connectingsettings.g.dart';

@collection
class ConnectingSettings {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String login = "";

  String password = "";

  String httppath = "";
}
