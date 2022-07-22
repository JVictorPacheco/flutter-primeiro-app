// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final int id;
  final String name;
  final int accountNumber;

  Contact(this.id, this.name, this.accountNumber);

  @override
  String toString() =>
      'Contact(id: $id, name: $name, accountNumber: $accountNumber)';
}
