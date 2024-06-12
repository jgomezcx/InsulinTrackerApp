import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ebptiestiivfodmoabgq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVicHRpZXN0aWl2Zm9kbW9hYmdxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU4MTE0ODUsImV4cCI6MjAzMTM4NzQ4NX0.Yq1PKTwZlZp9IGtHC8_DcA65NTm-fRyebSQoo9KFy4g';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
