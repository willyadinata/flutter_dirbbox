/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : login_screen.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/presentation/screens/screens.dart';
import 'package:dirbbox/shared/shared.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Assets.wave),
          Positioned(
            top: 100.0,
            left: 40.0,
            child: Image.asset(
              Assets.cloud,
              scale: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 380.0,
              left: 40.0,
              right: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                const Spacer(flex: 1),
                const Text(
                  'Dirbbox',
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 38.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  'Best cloud storage platform for all \n'
                  'business and individuals to \n'
                  'manage there data \n\n'
                  'Join For Free.',
                  style: TextStyle(
                    color: Color(0xFF7B7F9E),
                    fontSize: 14.0,
                    height: 2,
                  ),
                ),
                const Spacer(flex: 4),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.fingerprint),
                      label: const Text(
                        'Smart Id',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      style: TextButton.styleFrom(
                        primary: kPrimary,
                        backgroundColor: kSecondary.withOpacity(0.10),
                        fixedSize: const Size(150, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 4),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      icon: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      label: const Icon(Icons.arrow_right_alt_rounded),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: kPrimary,
                        fixedSize: const Size(150, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 5),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Use Social Login',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
                const Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      icon: Image.asset(
                        Assets.instagram,
                        width: 20.0,
                      ),
                    ),
                    const SizedBox(width: 50.0),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      icon: Image.asset(
                        Assets.twitter,
                        width: 20.0,
                      ),
                    ),
                    const SizedBox(width: 50.0),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      icon: Image.asset(
                        Assets.facebook,
                        height: 20.0,
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 4),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create an account',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const Spacer(flex: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
