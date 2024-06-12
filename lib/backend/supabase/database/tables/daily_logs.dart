import '../database.dart';

class DailyLogsTable extends SupabaseTable<DailyLogsRow> {
  @override
  String get tableName => 'daily_logs';

  @override
  DailyLogsRow createRow(Map<String, dynamic> data) => DailyLogsRow(data);
}

class DailyLogsRow extends SupabaseDataRow {
  DailyLogsRow(super.data);

  @override
  SupabaseTable get table => DailyLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  String? get mealType => getField<String>('meal_type');
  set mealType(String? value) => setField<String>('meal_type', value);

  double? get carbohydrates => getField<double>('carbohydrates');
  set carbohydrates(double? value) => setField<double>('carbohydrates', value);

  double? get carbInsulinUnits => getField<double>('carb_insulin_units');
  set carbInsulinUnits(double? value) =>
      setField<double>('carb_insulin_units', value);

  int? get bloodGlucose => getField<int>('blood_glucose');
  set bloodGlucose(int? value) => setField<int>('blood_glucose', value);

  String? get glucoseControl => getField<String>('glucose_control');
  set glucoseControl(String? value) =>
      setField<String>('glucose_control', value);

  double? get bloodGlucoseInsulinUnits =>
      getField<double>('blood_glucose_insulin_units');
  set bloodGlucoseInsulinUnits(double? value) =>
      setField<double>('blood_glucose_insulin_units', value);

  double? get totalAdministered => getField<double>('total_administered');
  set totalAdministered(double? value) =>
      setField<double>('total_administered', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
