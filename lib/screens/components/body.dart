import 'dart:async';
import 'dart:math';

import 'package:analog_clock/constants.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'clock.dart';
import 'clock_painter.dart';
import 'country_card.dart';
import 'time_in_hour_and_minutes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Newport Beach, USA | PST',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            //Spacer(),
            Clock(),
            //Spacer(),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: 'New York, USA',
                    timeZone: '+3 HRS | EST',
                    iconSrc: 'assets/icons/Liberty.svg',
                    time: '9:20',
                  ),
                  CountryCard(
                    country: 'New York, USA',
                    timeZone: '+3 HRS | EST',
                    iconSrc: 'assets/icons/Liberty.svg',
                    time: '9:20',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
