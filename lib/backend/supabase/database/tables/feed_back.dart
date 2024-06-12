import '../database.dart';

class FeedBackTable extends SupabaseTable<FeedBackRow> {
  @override
  String get tableName => 'feedBack';

  @override
  FeedBackRow createRow(Map<String, dynamic> data) => FeedBackRow(data);
}

class FeedBackRow extends SupabaseDataRow {
  FeedBackRow(super.data);

  @override
  SupabaseTable get table => FeedBackTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get subject => getField<String>('Subject');
  set subject(String? value) => setField<String>('Subject', value);

  String? get description => getField<String>('Description');
  set description(String? value) => setField<String>('Description', value);

  int? get review => getField<int>('review');
  set review(int? value) => setField<int>('review', value);
}
