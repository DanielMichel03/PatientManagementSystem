import '../database.dart';

class PatientTable extends SupabaseTable<PatientRow> {
  @override
  String get tableName => 'Patient';

  @override
  PatientRow createRow(Map<String, dynamic> data) => PatientRow(data);
}

class PatientRow extends SupabaseDataRow {
  PatientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PatientTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get pphoneNo => getField<String>('Pphone_No');
  set pphoneNo(String? value) => setField<String>('Pphone_No', value);

  String? get pusername => getField<String>('Pusername');
  set pusername(String? value) => setField<String>('Pusername', value);

  DateTime? get pdob => getField<DateTime>('PDOB');
  set pdob(DateTime? value) => setField<DateTime>('PDOB', value);
}
