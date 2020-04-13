//
//  Code is poetry
//  Created by Nick aka black.dragon74
//
//  Simple App to make a list of "TODOs" demonstrating the provider framework
//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/TODOModel.dart';
import 'package:todo_provider/views/MyHome.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => TODOModel(),
        child: MyHome(),
      ),
    );
  }
}
