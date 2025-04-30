import 'package:flutter/material.dart';

enum NotificationType {
  social,
  bounty,
  reward,
  video,
  level,
  nft,
  login,
  content,
  tip,
}

class NotificationModel {
  final String id;
  final String message;
  final String? submessage;
  final String timeAgo;
  final NotificationType type;
  final String? imageUrl;
  final bool hasChevron;
  final String? avatarUrl;
  final String? date;

  NotificationModel({
    required this.id,
    required this.message,
    this.submessage,
    required this.timeAgo,
    required this.type,
    this.imageUrl,
    this.hasChevron = false,
    this.avatarUrl,
    this.date,
  });

  IconData get icon {
    switch (type) {
      case NotificationType.social:
        return Icons.person;
      case NotificationType.bounty:
        return Icons.emoji_events;
      case NotificationType.reward:
        return Icons.star;
      case NotificationType.video:
        return Icons.videocam;
      case NotificationType.level:
        return Icons.trending_up;
      case NotificationType.nft:
        return Icons.diamond;
      case NotificationType.login:
        return Icons.login;
      case NotificationType.content:
        return Icons.article;
      case NotificationType.tip:
        return Icons.monetization_on;
    }
  }

  Color get iconColor {
    switch (type) {
      case NotificationType.social:
        return Colors.blue;
      case NotificationType.bounty:
        return Colors.orange;
      case NotificationType.reward:
        return Colors.orange;
      case NotificationType.video:
        return Colors.red;
      case NotificationType.level:
        return Colors.green;
      case NotificationType.nft:
        return Colors.purple;
      case NotificationType.login:
        return Colors.purple;
      case NotificationType.content:
        return Colors.orange;
      case NotificationType.tip:
        return Colors.orange;
    }
  }

  Color get avatarBgColor {
    switch (type) {
      case NotificationType.social:
        return Colors.blue.withOpacity(0.1);
      case NotificationType.bounty:
        return Colors.orange.withOpacity(0.1);
      case NotificationType.reward:
        return Colors.orange.withOpacity(0.1);
      case NotificationType.video:
        return Colors.red.withOpacity(0.1);
      case NotificationType.level:
        return Colors.green.withOpacity(0.1);
      case NotificationType.nft:
        return Colors.purple.withOpacity(0.1);
      case NotificationType.login:
        return Colors.purple.withOpacity(0.1);
      case NotificationType.content:
        return Colors.orange.withOpacity(0.1);
      case NotificationType.tip:
        return Colors.orange.withOpacity(0.1);
    }
  }
}
