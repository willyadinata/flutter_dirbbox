/*=========================================================================================
 * Created on Thu Nov 11 2021
 * File Name     : storage_detail_screen.dart
 * Description   : 
 * --------------------------------------------------------------------------------------
 * Project Name  : Dirbox - Flutter
 * Author Name   : Willy Adinata Saragih
 * Author Email  : me@willyadinata.my.id
 * Repo URL      : https://github.com/willyadinata
 * Copyright © 2021 Personal Project
=========================================================================================*/

import 'package:dirbbox/models/models.dart';
import 'package:dirbbox/presentation/widgets/widgets.dart';
import 'package:dirbbox/shared/shared.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StorageDetailScreen extends StatefulWidget {
  const StorageDetailScreen({Key? key}) : super(key: key);

  @override
  State<StorageDetailScreen> createState() => _StorageDetailScreenState();
}

class _StorageDetailScreenState extends State<StorageDetailScreen> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Details'),
        elevation: 0.0,
        foregroundColor: kSecondary,
        backgroundColor: themeData.scaffoldBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20.0,
            icon: const Icon(Icons.more_horiz_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections(),
                  ),
                ),
              ),
            ),
            const Text(
              'Available',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '43.36 GB',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Total 128 GB',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: ListView.builder(
                itemCount: storageItems.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => StorageListTile(
                  title: storageItems[i].title,
                  subtitle: storageItems[i].subtitle ?? '',
                  value: storageItems[i].value,
                  color: storageItems[i].color,
                ),
              ),
            ),
            SafeArea(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Export Details',
                  style: TextStyle(
                    color: kSecondary,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            value: 15,
            showTitle: false,
            radius: radius,
            color: const Color(0xFF4CE364),
          );
        case 1:
          return PieChartSectionData(
            value: 40,
            showTitle: false,
            radius: radius,
            color: const Color(0xFF567DF4),
          );
        case 2:
          return PieChartSectionData(
            value: 30,
            showTitle: false,
            radius: radius,
            color: const Color(0xFF22215B),
          );
        case 3:
          return PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: radius,
            color: const Color(0xFFFFC700),
          );
        default:
          throw Error();
      }
    });
  }
}
