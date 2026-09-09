import 'package:drift/drift.dart';

class Shops extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get address => text()();
  TextColumn get phone => text()();
  TextColumn get managerName => text()();
}