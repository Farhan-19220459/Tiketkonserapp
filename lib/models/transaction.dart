class Transaction {
  final String id;
  final String concertName;
  final String seatType;
  final double price;
  final String paymentMethod;
  final DateTime date;

  Transaction({
    required this.id,
    required this.concertName,
    required this.seatType,
    required this.price,
    required this.paymentMethod,
    required this.date,
  });
}
