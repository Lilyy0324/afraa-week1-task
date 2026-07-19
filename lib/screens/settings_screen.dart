import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool darkMode = false;
  bool reminders = true;

  Widget buildSwitchTile({
    required String title,
    required IconData icon,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      child: SwitchListTile(
        secondary: Icon(
          icon,
          color: AppColors.primary,
        ),
        title: Text(title),
        value: value,
        activeThumbColor: AppColors.primary,
        onChanged: onChanged,
      ),
    );
  }

  Widget buildInfoTile({
    required String title,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(
          icon,
          color: AppColors.primary,
        ),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text("Settings"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: ListView(
          children: [

            buildSwitchTile(
              title: "Notifications",
              icon: Icons.notifications_outlined,
              value: notifications,
              onChanged: (value) {
                setState(() {
                  notifications = value;
                });
              },
            ),

            buildSwitchTile(
              title: "Dark Mode",
              icon: Icons.dark_mode_outlined,
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),

            buildSwitchTile(
              title: "Task Reminders",
              icon: Icons.alarm,
              value: reminders,
              onChanged: (value) {
                setState(() {
                  reminders = value;
                });
              },
            ),

            const SizedBox(height: 15),

            buildInfoTile(
              title: "Privacy Policy",
              icon: Icons.privacy_tip_outlined,
            ),

            buildInfoTile(
              title: "About TaskNest",
              icon: Icons.info_outline,
            ),

            buildInfoTile(
              title: "Help & Support",
              icon: Icons.help_outline,
            ),
          ],
        ),
      ),
    );
  }
}