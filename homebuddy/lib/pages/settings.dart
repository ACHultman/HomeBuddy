import 'package:firebase_auth/firebase_auth.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var value = false;
    return Scaffold(
        body: SettingsList(
      sections: [
        SettingsSection(
          title: 'Settings',
          tiles: [
            SettingsTile(
              title: 'Language',
              subtitle: 'English',
              leading: Icon(Icons.language),
              onPressed: (BuildContext context) {},
            ),
            SettingsTile.switchTile(
              title: 'Use fingerprint',
              leading: Icon(Icons.fingerprint),
              switchValue: value,
              onToggle: (bool value) {
                value = !value;
              },
            ),
            SettingsTile(
              title: 'Logout',
              leading: Icon(Icons.exit_to_app),
              onPressed: (BuildContext context) {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ],
    ));
  }
}
