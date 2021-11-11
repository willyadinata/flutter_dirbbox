/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : setting_screen.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/presentation/screens/screens.dart';
import 'package:dirbbox/presentation/widgets/widgets.dart';
import 'package:dirbbox/shared/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _settingItems = [
      'Add Account',
      'Change Password',
      'Change Language',
      'Upgrade Plan',
      'Multiple Account'
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: kSecondary,
        backgroundColor: themeData.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 20.0),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Column(
              children: List.generate(
                _settingItems.length,
                (i) => ListTile(
                  onTap: i == 1
                      ? () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ChangePasswordScreen(),
                            ),
                          )
                      : null,
                  title: Text(_settingItems[i]),
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            CustomSwitchListTile(
              title: const Text(
                'Enable Sync',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              value: true,
              onToggle: (bool value) {},
            ),
            CustomSwitchListTile(
              title: const Text(
                'Enable 2 Step Verification',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              value: true,
              onToggle: (bool value) {},
            ),
          ],
        ),
      ),
    );
  }
}
