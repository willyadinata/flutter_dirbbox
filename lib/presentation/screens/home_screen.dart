/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : home_screen.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/models/folder.dart';
import 'package:dirbbox/presentation/screens/side_menu_screen.dart';
import 'package:dirbbox/presentation/widgets/widgets.dart';
import 'package:dirbbox/shared/shared.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideMenuScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kSecondary,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Text(
                    'Your Dribbbox',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: kSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      return _scaffoldKey.currentState!.openDrawer();
                    },
                    splashRadius: 20.0,
                    icon: Image.asset(
                      Assets.union,
                      width: 19.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 55.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFEEF2FE),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Folder',
                  icon: Icon(
                    Icons.search,
                    color: kSecondary,
                  ),
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Recent',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: kSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      icon: const Icon(
                        Icons.table_rows,
                        color: Color(0xFFB0C0D0),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      icon: Icon(Icons.window_sharp, color: kSecondary),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: Center(
                child: GridView.builder(
                  itemCount: folderList.length,
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19.0,
                    mainAxisSpacing: 19.0,
                    childAspectRatio: 3 / 2.1,
                  ),
                  itemBuilder: (context, index) => FolderCard(
                    index: index,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
