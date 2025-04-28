import 'package:flame/models/notification_model.dart';

class NotificationsData {
  static List<NotificationModel> getAllNotifications() {
    return [
      // Today
      NotificationModel(
        id: '1',
        message: 'New bounty available: Design a ZK-themed banner 🎨',
        submessage: 'Reward: 0.05 ETH + badge',
        timeAgo: '4 mins ago',
        type: NotificationType.bounty,
        imageUrl: 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/zip-blob/flame-mobile-main/android/app/src/main/res/mipmap-xhdpi/ic_launcher-1dnOyRQy4FCCko48Q2da8wKFzVzwlX.png',
        date: 'Today',
      ),
      NotificationModel(
        id: '2',
        message: 'You received a friend request from @jessicanoone',
        submessage: 'Connect privately and start a streak.',
        timeAgo: '4 mins ago',
        type: NotificationType.social,
        hasChevron: true,
        avatarUrl: 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/zip-blob/flame-mobile-main/android/app/src/main/res/mipmap-xhdpi/ic_launcher-1dnOyRQy4FCCko48Q2da8wKFzVzwlX.png',
        date: 'Today',
      ),
      NotificationModel(
        id: '3',
        message: 'Someone just unlocked your exclusive video 📹',
        submessage: 'Revenue added to your treasury wallet!',
        timeAgo: '4 mins ago',
        type: NotificationType.video,
        hasChevron: true,
        date: 'Today',
      ),
      NotificationModel(
        id: '4',
        message: 'You\'ve reached Level 4! ✨',
        submessage: 'Your title: Verified Contributor',
        timeAgo: '4 mins ago',
        type: NotificationType.level,
        date: 'Today',
      ),
      NotificationModel(
        id: '5',
        message: 'Loot drop alert! A new NFT has landed in your vault 🔮',
        submessage: 'Check Flame Vault to view & trade.',
        timeAgo: '4 mins ago',
        type: NotificationType.nft,
        date: 'Today',
      ),
      
      // Yesterday
      NotificationModel(
        id: '6',
        message: 'You\'ve unlocked a mystery box 🎁',
        submessage: 'Open it now to see what\'s inside.',
        timeAgo: '4 mins ago',
        type: NotificationType.reward,
        hasChevron: true,
        imageUrl: 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/zip-blob/flame-mobile-main/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage%403x-KXQTC0W5Fncy4PqRf2jWtrKO7gLMPM.png',
        date: 'Yesterday',
      ),
      NotificationModel(
        id: '7',
        message: 'Your daily login streak continues — Day 7',
        submessage: 'More Flame Points unlocked. Stay lit 🔥',
        timeAgo: '4 mins ago',
        type: NotificationType.login,
        hasChevron: true,
        date: 'Yesterday',
      ),
      NotificationModel(
        id: '8',
        message: '@X_AE_A-13 just mentioned you in a post',
        submessage: 'Check out this thread 👀',
        timeAgo: '4 mins ago',
        type: NotificationType.social,
        hasChevron: true,
        avatarUrl: 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/zip-blob/flame-mobile-main/android/app/src/main/res/mipmap-xhdpi/ic_launcher-1dnOyRQy4FCCko48Q2da8wKFzVzwlX.png',
        date: 'Yesterday',
      ),
      NotificationModel(
        id: '9',
        message: 'Your bounty submission was accepted',
        submessage: 'Reputation score updated. 50 XP earned.',
        timeAgo: '4 mins ago',
        type: NotificationType.bounty,
        imageUrl: 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/zip-blob/flame-mobile-main/android/app/src/main/res/mipmap-xhdpi/ic_launcher-1dnOyRQy4FCCko48Q2da8wKFzVzwlX.png',
        date: 'Yesterday',
      ),
      
      // 2 days ago
      NotificationModel(
        id: '10',
        message: 'Your content just made 0.12 ETH',
        submessage: 'Fans are loving what you post.',
        timeAgo: '4 mins ago',
        type: NotificationType.content,
        hasChevron: true,
        date: '2 days ago',
      ),
      NotificationModel(
        id: '11',
        message: 'You just earned 25 XP 🔥',
        submessage: 'Keep streak! Keep engaging to level up faster.',
        timeAgo: '4 mins ago',
        type: NotificationType.reward,
        hasChevron: true,
        date: '2 days ago',
      ),
      NotificationModel(
        id: '12',
        message: 'DAO voted to fund your grant proposal 🎉',
        submessage: 'Congrats! Funds will be disbursed soon.',
        timeAgo: '4 mins ago',
        type: NotificationType.bounty,
        imageUrl: 'https://hebbkx1anhila5yf.public.blob.vercel-storage.com/zip-blob/flame-mobile-main/android/app/src/main/res/mipmap-xhdpi/ic_launcher-1dnOyRQy4FCCko48Q2da8wKFzVzwlX.png',
        date: 'Today',
      ),
      NotificationModel(
        id: '13',
        message: 'You received a new tip 💰',
        submessage: 'From @cryptolegend. Check your wallet monthly.',
        timeAgo: '4 mins ago',
        type: NotificationType.tip,
        hasChevron: true,
        date: 'Today',
      ),
    ];
  }

  static List<NotificationModel> getSocialNotifications() {
    return getAllNotifications().where((notification) => 
      notification.type == NotificationType.social
    ).toList();
  }

  static List<NotificationModel> getBountyNotifications() {
    return getAllNotifications().where((notification) => 
      notification.type == NotificationType.bounty
    ).toList();
  }

  static List<NotificationModel> getRewardNotifications() {
    return getAllNotifications().where((notification) => 
      notification.type == NotificationType.reward || 
      notification.type == NotificationType.tip ||
      notification.type == NotificationType.level ||
      notification.type == NotificationType.nft ||
      notification.type == NotificationType.login
    ).toList();
  }
}
