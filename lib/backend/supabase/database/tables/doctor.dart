import '../database.dart';

class DoctorTable extends SupabaseTable<DoctorRow> {
  @override
  String get tableName => 'Doctor';

  @override
  DoctorRow createRow(Map<String, dynamic> data) => DoctorRow(data);
}

class DoctorRow extends SupabaseDataRow {
  DoctorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DoctorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get dphoneNo => getField<String>('Dphone_No');
  set dphoneNo(String? value) => setField<String>('Dphone_No', value);

  int? get specification => getField<int>('specification');
  set specification(int? value) => setField<int>('specification', value);

  String? get dusername => getField<String>('Dusername');
  set dusername(String? value) => setField<String>('Dusername', value);
}
