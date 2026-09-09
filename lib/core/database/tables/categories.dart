import 'package:drift/drift.dart';
import 'shops.dart';

class Categories extends Table {
  Int64Column get id => integer().autoIncrement()();
  TextColumn get name => text()();
  DateTimeColumn get createdAt => dateTime()();
  IntColumn get shopId => integer().references(Shops, #id)();
}