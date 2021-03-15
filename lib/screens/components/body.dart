import 'dart:async';

import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

import 'time_in_hour_and_minutes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Newport Beach, USA | PST',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
        ],
      ),
    );
  }
}
