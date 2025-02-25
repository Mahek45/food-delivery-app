import 'package:flutter/material.dart';
import 'package:food_deliver/components/my_drawer_tile.dart';
import 'package:food_deliver/services/auth/auth_service.dart';
import '../pages/settin_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
final authService = AuthServices();
 authService.signOut();
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

          // home list tile
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // settings list tile
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ), // MaterialPageRoute
              );
            }, // MyDrawerTile
          ),

          const Spacer(),

          // logout list tile
          MyDrawerTile(
            text: "L O G o u t",
            icon: Icons.logout,
            onTap: (){},
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}