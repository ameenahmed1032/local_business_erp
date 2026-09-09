import 'package:drift/drift.dart';

import 'categories.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get categoryId => integer().references(Categories, #id)();

  TextColumn get unit => text()();
  TextColumn get barcode => text().nullable()();

  TextColumn get purchaseUnit => text()();
  TextColumn get sellingUnit => text()();
  IntColumn get conversionFactor => integer()();

  IntColumn get averageCost => integer()();
  IntColumn get sellingPrice => integer()();

  IntColumn get minimumStock => integer()();

  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime();

  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

}