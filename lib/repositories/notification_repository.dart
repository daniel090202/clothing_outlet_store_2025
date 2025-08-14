import 'package:shoe_stores/types/notification_type.dart';

class NotificationRepository {
  List<NotificationItem> getNotifications() {
    return [
      NotificationItem(
        type: NotificationType.promotion,
        time: "2 minutes ago",
        title: "Order Confirmed",
        message: "Your order #123456 has been confirmed and is processed",
        isRead: true,
      ),
      NotificationItem(
        type: NotificationType.promotion,
        time: "2 minutes ago",
        title: "Special Offer",
        message: "Get 20% off on all shoes this weekend!",
        isRead: false,
      ),
      NotificationItem(
        type: NotificationType.delivery,
        time: "3 hours ago",
        title: "Out For Delivery",
        message: "Your order #123456 is out for delivery",
        isRead: true,
      ),
      NotificationItem(
        type: NotificationType.payment,
        time: "2 minutes ago",
        title: "Payment Successful",
        message: "Payment for order #123456 was successful ",
        isRead: true,
      ),
    ];
  }
}
