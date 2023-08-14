import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'timerpage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>ProviderTimer(),

    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerPage(),
    )));
  }

