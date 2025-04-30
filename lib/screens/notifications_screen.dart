import 'package:flutter/material.dart';
import 'package:flame/data/notifications_data.dart';
import 'package:flame/models/notification_model.dart';
import 'package:flame/widgets/notification_item.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<NotificationModel> _currentNotifications;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _currentNotifications = NotificationsData.getAllNotifications();
    
    _tabController.addListener(() {
      setState(() {
        switch (_tabController.index) {
          case 0:
            _currentNotifications = NotificationsData.getAllNotifications();
            break;
          case 1:
            _currentNotifications = NotificationsData.getSocialNotifications();
            break;
          case 2:
            _currentNotifications = NotificationsData.getBountyNotifications();
            break;
          case 3:
            _currentNotifications = NotificationsData.getRewardNotifications();
            break;
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFF8A70D6),
              ),
              tabs: [
                _buildTab('All'),
                _buildTab('Socials'),
                _buildTab('Bounties'),
                _buildTab('Rewards'),
              ],
            ),
          ),
        ),
      ),
      body: _buildNotificationsList(),
    );
  }

  Widget _buildTab(String title) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey.shade300, width: 1),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }

  Widget _buildNotificationsList() {
    // Group notifications by date
    Map<String, List<NotificationModel>> groupedNotifications = {};
    
    for (var notification in _currentNotifications) {
      if (!groupedNotifications.containsKey(notification.date)) {
        groupedNotifications[notification.date!] = [];
      }
      groupedNotifications[notification.date]!.add(notification);
    }

    return ListView.builder(
      padding: const EdgeInsets.only(top: 16),
      itemCount: groupedNotifications.length,
      itemBuilder: (context, index) {
        String date = groupedNotifications.keys.elementAt(index);
        List<NotificationModel> notifications = groupedNotifications[date]!;
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                date,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            ...notifications.map((notification) => NotificationItem(notification: notification)).toList(),
          ],
        );
      },
    );
  }
}
