import '../database.dart';

class DocAptTable extends SupabaseTable<DocAptRow> {
  @override
  String get tableName => 'DocApt';

  @override
  DocAptRow createRow(Map<String, dynamic> data) => DocAptRow(data);
}

class DocAptRow extends SupabaseDataRow {
  DocAptRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DocAptTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool? get open => getField<bool>('open');
  set open(bool? value) => setField<bool>('open', value);

  String get time => getField<String>('time')!;
  set time(String value) => setField<String>('time', value);

  int get doc => getField<int>('doc')!;
  set doc(int value) => setField<int>('doc', value);
}
