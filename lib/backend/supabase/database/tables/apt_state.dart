import '../database.dart';

class AptStateTable extends SupabaseTable<AptStateRow> {
  @override
  String get tableName => 'AptState';

  @override
  AptStateRow createRow(Map<String, dynamic> data) => AptStateRow(data);
}

class AptStateRow extends SupabaseDataRow {
  AptStateRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AptStateTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get sate => getField<String>('Sate')!;
  set sate(String value) => setField<String>('Sate', value);

  int get stateId => getField<int>('State_id')!;
  set stateId(int value) => setField<int>('State_id', value);
}
