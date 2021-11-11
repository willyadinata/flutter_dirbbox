/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : main.dart
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

import 'shared/shared.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dirbbox',
      theme: themeData,
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
