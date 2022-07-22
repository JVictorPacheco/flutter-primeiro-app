// ignore_for_file: public_member_api_docs, sort_constructors_first
class Transfer {
  final int accounNumber;
  final double value;

  Transfer(this.accounNumber, this.value); // constructor

  @override
  String toString() =>
      'Transfer(accounNumber: $accounNumber, value: $value)'; // toString
}
