/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : folder.dart
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

class Folder {
  String name;
  Color color;
  DateTime created;

  Folder({
    required this.name,
    required this.color,
    required this.created,
  });
}

List<Folder> folderList = [
  Folder(
    name: 'Mobile Apps',
    color: kFolderBlue,
    created: DateTime.now(),
  ),
  Folder(
    name: 'SVG Icons',
    color: kFolderYellow,
    created: DateTime.now(),
  ),
  Folder(
    name: 'Prototypes',
    color: kFolderRed,
    created: DateTime.now(),
  ),
  Folder(
    name: 'Avatars',
    color: kFolderTosca,
    created: DateTime.now(),
  ),
  Folder(
    name: 'Design',
    color: kFolderBlue,
    created: DateTime.now(),
  ),
  Folder(
    name: 'Portfolio',
    color: kFolderYellow,
    created: DateTime.now(),
  ),
  Folder(
    name: 'References',
    color: kFolderRed,
    created: DateTime.now(),
  ),
  Folder(
    name: 'Clients',
    color: kFolderTosca,
    created: DateTime.now(),
  ),
];
