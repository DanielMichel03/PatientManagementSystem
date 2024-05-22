import '../database.dart';

class SpecialityTable extends SupabaseTable<SpecialityRow> {
  @override
  String get tableName => 'Speciality';

  @override
  SpecialityRow createRow(Map<String, dynamic> data) => SpecialityRow(data);
}

class SpecialityRow extends SupabaseDataRow {
  SpecialityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpecialityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get spec => getField<String>('Spec');
  set spec(String? value) => setField<String>('Spec', value);
}
