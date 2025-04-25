import 'package:flutter/material.dart';

class LateralDrawer extends StatelessWidget {
  const LateralDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.9,
      shape: const RoundedRectangleBorder(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/avatars/david.png'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'David',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFEEF2FF),
                              ),
                              child: Center(
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF6366F1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '@davidemulo',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF9093A3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/money.png',
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '\$0.00',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              drawerItem('assets/icons/user.png', 'Profile'),
              drawerItem('assets/icons/wallet.png', 'Wallet'),
              drawerItem('assets/icons/user-group.png', 'Discover/Explore'),
              const Divider(height: 32),
              drawerItem(
                'assets/icons/setting.png',
                'Settings',
                disabled: true,
              ),
              drawerItem('assets/icons/support.png', 'Support', disabled: true),
              drawerItem('assets/icons/logout.png', 'Logout', disabled: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerItem(String iconPath, String label, {bool disabled = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Opacity(
        opacity: disabled ? 0.75 : 1.0,
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: 20,
              height: 20,
              color: disabled ? Colors.grey : null,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: disabled ? Color(0xFF9093A3) : Color(0xFF1E293B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
