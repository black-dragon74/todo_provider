import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LocalClock extends StatefulWidget {
  @override
  _LocalClockState createState() => _LocalClockState();
}

class _LocalClockState extends State<LocalClock> {
  String _time;

  @override
  void initState() {
    _time = _getLocalTime;
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    setState(() {
      _time = _getLocalTime;
    });
  }

  String get _getLocalTime => DateFormat('hh:mm a').format(DateTime.now().toLocal());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            '$_time',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          Text(
            'Current time',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
