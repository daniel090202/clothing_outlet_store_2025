enum NotificationType { order, delivery, promotion, payment }

class NotificationItem {
  final bool isRead;

  final String time;
  final String title;
  final String message;

  final NotificationType type;

  const NotificationItem({
    required this.type,
    required this.time,
    required this.title,
    required this.message,
    this.isRead = false,
  });
}
