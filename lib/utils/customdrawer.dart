import 'package:deliveryapp/pages/settinpage.dart';
import 'package:deliveryapp/utils/drawertile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Icon(Icons.lock_open,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Divider(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              MyDrawerTile(
                  text: "HOME",
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              MyDrawerTile(
                  text: "Settings",
                  icon: Icons.settings,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingPage()));
                  }),
              const Spacer(),
              MyDrawerTile(text: 'LOGOUT', icon: Icons.logout, onTap: () {}),
              const SizedBox(height: 25),
            ],
          ),
        ));
  }
}
