import 'package:flutter/material.dart';
import 'package:food_deliver/components/my_drawer_tile.dart';
import 'package:food_deliver/services/auth/auth_service.dart';
import '../pages/settin_page.dart';
import 'package:food_deliver/pages/ReviewListPage.dart'; // ✅ Import Review Page

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Future<void> logout(BuildContext context) async {
    final authService = AuthServices(); // ✅ Corrected class name

    try {
      await authService.signOut(); // ✅ Await signOut to complete
      Navigator.of(context).pushReplacementNamed('/login'); // ✅ Navigate to login screen
    } catch (e) {
      debugPrint("Logout Error: $e"); // ✅ Debug error if logout fails
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // Home
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // Settings
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          // View Reviews ✅ (Newly added)
          MyDrawerTile(
            text: "V I E W  R E V I E W S",
            icon: Icons.reviews,
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReviewListPage()),
              );
            },
          ),

          const Spacer(),

          // Logout
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () => logout(context),
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
