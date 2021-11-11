/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : profile_screen.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/presentation/widgets/widgets.dart';
import 'package:dirbbox/shared/shared.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: kSecondary,
        backgroundColor: kBackground,
        centerTitle: true,
        title: const Text('My Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20.0,
            icon: const Icon(
              Icons.more_horiz_rounded,
            ),
          ),
          const SizedBox(width: 8.0)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 209.0,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(
                            Assets.profileImage,
                            width: 52.0,
                            height: 52.0,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Neelesh Chaudhary',
                            style: TextStyle(
                              color: kSecondary,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            'UI / UX Designer',
                            style: TextStyle(
                              color: kSecondary,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing'
                            ' elit. Ornare pretium placerat ut platea.',
                            style: TextStyle(
                              color: kSecondary.withOpacity(0.6),
                              height: 1.5,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      right: 20.0,
                      child: Container(
                        width: 40.0,
                        height: 20.0,
                        margin: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF317B),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Pro',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'My Folder',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: kSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        splashRadius: 20.0,
                        icon: SizedBox(
                          width: 16.0,
                          height: 16.0,
                          child: Image.asset(Assets.add),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 20.0,
                        icon: SizedBox(
                          width: 16.0,
                          height: 16.0,
                          child: Image.asset(Assets.settings),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 20.0,
                        icon: SizedBox(
                          width: 16.0,
                          height: 16.0,
                          child: Image.asset(Assets.rightArrow),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 320,
                child: Center(
                  child: GridView.builder(
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
              ),
              Row(
                children: [
                  Text(
                    'Recent Uploads',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: kSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 20.0,
                    icon: SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: Image.asset(Assets.sort),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xFFEEF7FE),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(Assets.close),
                  ),
                ),
                title: Text(
                  'Projects.docx',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kSecondary,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'November 22.2020',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: kSecondary.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      '300kb',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: kSecondary.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
