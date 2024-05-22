import '../database.dart';

class AppointmentTable extends SupabaseTable<AppointmentRow> {
  @override
  String get tableName => 'Appointment';

  @override
  AppointmentRow createRow(Map<String, dynamic> data) => AppointmentRow(data);
}

class AppointmentRow extends SupabaseDataRow {
  AppointmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppointmentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get patientId => getField<int>('Patient_id');
  set patientId(int? value) => setField<int>('Patient_id', value);

  int? get doctorId => getField<int>('Doctor_id');
  set doctorId(int? value) => setField<int>('Doctor_id', value);

  int? get state => getField<int>('State');
  set state(int? value) => setField<int>('State', value);

  String? get time => getField<String>('Time');
  set time(String? value) => setField<String>('Time', value);
}
