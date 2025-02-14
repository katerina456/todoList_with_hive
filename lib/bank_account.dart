import 'package:hive/hive.dart';

part 'bank_account.g.dart';

@HiveType(typeId: 1)
class BankAccount {
  BankAccount({required this.currency, required this.myInt});
  @HiveField(0)
  String currency;

  @HiveField(1)
  int myInt;

}