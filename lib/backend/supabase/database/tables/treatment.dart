import '../database.dart';

class TreatmentTable extends SupabaseTable<TreatmentRow> {
  @override
  String get tableName => 'Treatment';

  @override
  TreatmentRow createRow(Map<String, dynamic> data) => TreatmentRow(data);
}

class TreatmentRow extends SupabaseDataRow {
  TreatmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TreatmentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get prescriptionName => getField<String>('Prescription_name')!;
  set prescriptionName(String value) =>
      setField<String>('Prescription_name', value);

  String? get prescriptionDate => getField<String>('Prescription_date');
  set prescriptionDate(String? value) =>
      setField<String>('Prescription_date', value);

  String? get dscription => getField<String>('Dscription');
  set dscription(String? value) => setField<String>('Dscription', value);

  int? get patientId => getField<int>('Patient_id');
  set patientId(int? value) => setField<int>('Patient_id', value);

  int? get doctorId => getField<int>('Doctor_id');
  set doctorId(int? value) => setField<int>('Doctor_id', value);
}
