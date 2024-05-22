import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://cnmvbvuwemgsxdtaowgq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNubXZidnV3ZW1nc3hkdGFvd2dxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2Mjg4OTAsImV4cCI6MjAzMTIwNDg5MH0.xih5KdcvMS5hqhMZRAtr6xAMJDN_2ktBinKXu1xyolU';

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
