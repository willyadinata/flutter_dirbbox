/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : menu.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class Menu {
  String title;
  Widget? route;

  Menu({
    required this.title,
    this.route,
  });
}

List<Menu> menuItems = [
  Menu(title: 'Home', route: const HomeScreen()),
  Menu(title: 'Profile', route: const ProfileScreen()),
  Menu(title: 'Storage', route: const StorageDetailScreen()),
  Menu(title: 'Shared'),
  Menu(title: 'Stats'),
  Menu(title: 'Settings', route: const SettingScreen()),
  Menu(title: 'Help'),
];
