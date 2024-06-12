import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get carbohydrateRatioUnit =>
      getField<double>('carbohydrate_ratio_unit');
  set carbohydrateRatioUnit(double? value) =>
      setField<double>('carbohydrate_ratio_unit', value);

  int? get carbohydrateRatioCarb => getField<int>('carbohydrate_ratio_carb');
  set carbohydrateRatioCarb(int? value) =>
      setField<int>('carbohydrate_ratio_carb', value);

  int? get targetBg => getField<int>('target_bg');
  set targetBg(int? value) => setField<int>('target_bg', value);

  int? get unitAboveTarget => getField<int>('unit_above_target');
  set unitAboveTarget(int? value) => setField<int>('unit_above_target', value);

  bool? get usesCarbohydrates => getField<bool>('uses_carbohydrates');
  set usesCarbohydrates(bool? value) =>
      setField<bool>('uses_carbohydrates', value);

  bool? get usesBg => getField<bool>('uses_bg');
  set usesBg(bool? value) => setField<bool>('uses_bg', value);

  String? get profileImageUrl => getField<String>('profile_image_url');
  set profileImageUrl(String? value) =>
      setField<String>('profile_image_url', value);

  double? get bGUnit => getField<double>('BG_unit');
  set bGUnit(double? value) => setField<double>('BG_unit', value);

  int? get targetBedtimeBG => getField<int>('targetBedtimeBG');
  set targetBedtimeBG(int? value) => setField<int>('targetBedtimeBG', value);

  bool? get walkthroughYet => getField<bool>('walkthrough_yet');
  set walkthroughYet(bool? value) => setField<bool>('walkthrough_yet', value);
}
