import '../database.dart';

class AdminTable extends SupabaseTable<AdminRow> {
  @override
  String get tableName => 'Admin';

  @override
  AdminRow createRow(Map<String, dynamic> data) => AdminRow(data);
}

class AdminRow extends SupabaseDataRow {
  AdminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get ausername => getField<String>('Ausername');
  set ausername(String? value) => setField<String>('Ausername', value);

  String? get aphoneNo => getField<String>('Aphone_No');
  set aphoneNo(String? value) => setField<String>('Aphone_No', value);

  String? get aemail => getField<String>('Aemail');
  set aemail(String? value) => setField<String>('Aemail', value);
}
