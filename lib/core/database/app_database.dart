import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables/shops.dart';
import 'tables/categories.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Shops, Categories])
class AppDatabase extends _$AppDatabase {
AppDatabase() : super(driftDatabase(name: 'arclyte_erp'));

@override
int get schemaVersion => 1;
}
