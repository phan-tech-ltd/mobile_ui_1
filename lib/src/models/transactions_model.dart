class TransactionsModel {
  TransactionsModel({required this.name, required this.date, required this.amount, required this.type});
  final String name;
  final DateTime date;
  final TransactionType type;
  final double amount;
}



enum TransactionType{
  send, receive
}

List<TransactionsModel> get transactions {
  DateTime now = DateTime.now();
  return [
    TransactionsModel(name: 'Eddie Kim', amount: 200, type: TransactionType.send, date: DateTime(now.year, now.month, now.day, now.hour, now.minute - 5)),
    TransactionsModel(name: 'John M', amount: 650, type: TransactionType.send, date: DateTime(now.year, now.month, now.day, now.hour, now.minute - 30)),
    TransactionsModel(name: 'Grace Wanja', amount: 400, type: TransactionType.receive, date: DateTime(now.year, now.month, now.day, now.hour - 2, now.minute - 25)),
    TransactionsModel(name: 'Ann Kari', amount: 550, type: TransactionType.receive, date: DateTime(now.year, now.month, now.day, now.hour - 3, now.minute - 2)),
    TransactionsModel(name: 'Ladys M', amount: 2000, type: TransactionType.receive, date: DateTime(now.year, now.month, now.day - 1, now.hour, now.minute - 10)),
    TransactionsModel(name: 'David Otieno', amount: 1500, type: TransactionType.send, date: DateTime(now.year, now.month, now.day - 1, now.hour, now.minute - 10)),
    TransactionsModel(name: 'Fridah W', amount: 200, type: TransactionType.receive, date: DateTime(now.year, now.month, now.day - 1, now.hour, now.minute - 7)),
    TransactionsModel(name: 'Maggy K', amount: 100, type: TransactionType.send, date: DateTime(now.year, now.month, now.day - 2, now.hour, now.minute - 8)),
    TransactionsModel(name: 'Titus Jesse', amount: 350, type: TransactionType.receive, date: DateTime(now.year, now.month, now.day - 2, now.hour, now.minute - 40)),
    TransactionsModel(name: 'Edith Jema', amount: 5000, type: TransactionType.send, date: DateTime(now.year, now.month, now.day - 2, now.hour, now.minute - 9)),
    TransactionsModel(name: 'Joy Mende', amount: 700, type: TransactionType.send, date: DateTime(now.year, now.month, now.day - 3, now.hour, now.minute - 5)),
    TransactionsModel(name: 'Max N', amount: 600, type: TransactionType.send, date: DateTime(now.year, now.month, now.day - 3, now.hour, now.minute - 15)),
    TransactionsModel(name: 'Dora Njeri', amount: 150, type: TransactionType.receive, date: DateTime(now.year, now.month - 1, now.day, now.hour, now.minute - 3)),
    TransactionsModel(name: 'Mark K', amount: 2300, type: TransactionType.receive, date: DateTime(now.year, now.month -1 , now.day, now.hour, now.minute)),
  ];
}