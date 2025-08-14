enum OrderStatus { active, completed, cancelled }

class Order {
  final int itemCount;

  final double totalAmount;

  final DateTime orderDate;

  final OrderStatus status;

  final String imageUrl;
  final String orderNumber;

  Order({
    required this.orderNumber,
    required this.itemCount,
    required this.totalAmount,
    required this.status,
    required this.imageUrl,
    required this.orderDate,
  });

  String get statusString => status.name;
}
