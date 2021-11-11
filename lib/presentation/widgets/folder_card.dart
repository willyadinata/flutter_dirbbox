/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : folder_card.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/models/models.dart';
import 'package:dirbbox/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class FolderCard extends StatelessWidget {
  const FolderCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lighten(folderList[index].color).withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Positioned(
              left: 0.5,
              child: SvgPicture.asset(
                'assets/svgs/folder_top.svg',
                width: 37.0,
                color: darken(folderList[index].color),
              ),
            ),
            Positioned(
              top: 3,
              child: SvgPicture.asset(
                'assets/svgs/folder_body.svg',
                width: 40.0,
                color: folderList[index].color,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Icon(
                      Icons.more_vert,
                      color: darken(folderList[index].color),
                    ),
                  ],
                ),
                const Spacer(flex: 4),
                Text(
                  folderList[index].name,
                  style: TextStyle(
                    color: darken(folderList[index].color),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(flex: 1),
                Text(
                  DateFormat('MMMM dd.yyyy').format(
                    folderList[index].created,
                  ),
                  style: TextStyle(
                    color: darken(folderList[index].color),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
