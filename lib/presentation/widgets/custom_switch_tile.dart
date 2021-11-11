/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : custom_switch_tile.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitchListTile extends StatelessWidget {
  const CustomSwitchListTile({
    Key? key,
    required this.value,
    required this.onToggle,
    required this.title,
    this.activeColor,
  }) : super(key: key);

  final bool value;
  final void Function(bool) onToggle;
  final Widget title;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
          Padding(
            padding: const EdgeInsets.only(right: 11.0),
            child: FlutterSwitch(
              width: 34.29,
              height: 20.0,
              toggleSize: 11.43,
              borderRadius: 30.0,
              padding: 4.29,
              showOnOff: false,
              activeColor: activeColor ?? const Color(0xFF00BCD4),
              value: value,
              onToggle: onToggle,
            ),
          ),
        ],
      ),
    );
  }
}
