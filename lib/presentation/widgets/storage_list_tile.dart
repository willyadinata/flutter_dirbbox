/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : storage_list_tile.dart
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

class StorageListTile extends StatelessWidget {
  const StorageListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.value,
    this.color,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final double value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10.0,
                height: 10.0,
                margin: const EdgeInsets.only(top: 6.0),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: kSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: kSecondary.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: RotatedBox(
              quarterTurns: 2,
              child: SizedBox(
                width: 110.0,
                child: LinearProgressIndicator(
                  value: value,
                  color: color ?? kSecondary,
                  backgroundColor: const Color(0xFFEEF7FE),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
