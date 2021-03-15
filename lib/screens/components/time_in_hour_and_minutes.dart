import 'dart:async';

import 'package:flutter/material.dart';
import '../../size_config.dart';

class TimeInHourAndMinute extends StatefulWidget {
  @override
  _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //обновление часов
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  //format(Duration d) => d.toString().split('.').first.padLeft(8, "0");

  @override
  Widget build(BuildContext context) {
    //String _period = _timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          //'${format(Duration(hours: _timeOfDay.hour, minutes: _timeOfDay.minute))}',
          '${_timeOfDay.hour}:${_timeOfDay.minute}',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          width: 5,
        ),
        // RotatedBox(
        //   quarterTurns: 3,
        //   child: Text(
        //     _period,
        //     style: TextStyle(fontSize: getProportionateScreenWidth(18)),
        //   ),
        // ),
      ],
    );
  }
}
