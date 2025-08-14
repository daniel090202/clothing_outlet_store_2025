import 'package:shoe_stores/models/order.dart';

class OrderRepository {
  List<Order> getOrders() {
    return [
      Order(
        itemCount: 2,
        totalAmount: 2938.3,
        status: OrderStatus.active,
        imageUrl: "assets/images/shoe.jpg",
        orderNumber: "123456",
        orderDate: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      Order(
        itemCount: 1,
        totalAmount: 2938.3,
        status: OrderStatus.active,
        imageUrl: "assets/images/laptop.jpg",
        orderNumber: "322422",
        orderDate: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      Order(
        itemCount: 1,
        totalAmount: 32.3,
        status: OrderStatus.completed,
        imageUrl: "assets/images/shoe2.jpg",
        orderNumber: "322422",
        orderDate: DateTime.now().subtract(const Duration(hours: 3)),
      ),
      Order(
        itemCount: 1,
        totalAmount: 32.3,
        status: OrderStatus.cancelled,
        imageUrl: "assets/images/shoe2.jpg",
        orderNumber: "322422",
        orderDate: DateTime.now().subtract(const Duration(hours: 3)),
      ),
    ];
  }

  List<Order> getOrdersByStatus(OrderStatus status) {
    return getOrders().where((order) => order.status == status).toList();
  }
}
