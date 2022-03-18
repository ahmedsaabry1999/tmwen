class Cart {
  final int id;
  final String vendor;
  final String product;
  String date;
  int quantity;
  int user;
  Cart({
    required this.id,
    required this.vendor,
    required this.product,
    required this.quantity,
    required this.user,
    required this.date,
  });

  factory Cart.fromJson(Map<String, dynamic> map) {
    return Cart(
      id: map['id']?.toInt() ?? 0,
      vendor: map['vendor'] ?? '',
      product: map['product'] ?? '',
      date: map['date'],
      quantity: map['quantity']?.toInt() ?? 0,
      user: map['user']?.toInt() ?? 0,
    );
  }
}
