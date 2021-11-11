/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : storage.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/shared/shared.dart';
import 'package:flutter/material.dart';

class Storage {
  String title;
  String? subtitle;
  double value;
  Color? color;

  Storage({
    required this.title,
    this.subtitle,
    required this.value,
    this.color,
  });
}

List<Storage> storageItems = [
  Storage(
    title: 'Design Files',
    subtitle: '38.66 GB',
    color: kSecondary,
    value: 0.6,
  ),
  Storage(
    title: 'Images',
    subtitle: '24.80 GB',
    color: const Color(0xFFFFC700),
    value: 0.4,
  ),
  Storage(
    title: 'Video',
    subtitle: '12.60 GB',
    color: const Color(0xFF4CE364),
    value: 0.3,
  ),
  Storage(
    title: 'Documents',
    subtitle: '06.57 GB',
    color: const Color(0xFF567DF4),
    value: 0.7,
  ),
  Storage(
    title: 'Others',
    subtitle: '2.01 GB',
    color: const Color(0xFFFF842A),
    value: 0.2,
  ),
];
