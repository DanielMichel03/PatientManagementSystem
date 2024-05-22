import '../database.dart';

class PaymentTable extends SupabaseTable<PaymentRow> {
  @override
  String get tableName => 'Payment';

  @override
  PaymentRow createRow(Map<String, dynamic> data) => PaymentRow(data);
}

class PaymentRow extends SupabaseDataRow {
  PaymentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  double? get cost => getField<double>('cost');
  set cost(double? value) => setField<double>('cost', value);

  int? get patientId => getField<int>('patient_id');
  set patientId(int? value) => setField<int>('patient_id', value);
}
