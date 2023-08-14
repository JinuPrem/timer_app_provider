import 'dart:async';

import 'package:flutter/cupertino.dart';

class ProviderTimer extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 0;
  double selectedTime = 0;
  bool timerPlay = false;

  void timerStart() {
    timerPlay = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentDuration == 0) {
        timer.cancel();
        currentDuration = 0;
      } else {
        currentDuration--;
        notifyListeners();
      }
    });
  }

  void timerStop() {
    timer.cancel();
    timerPlay = false;
    notifyListeners();

  }

  void selecteTime(double seconds) {
    selectedTime=seconds;
    currentDuration=seconds;
    notifyListeners();
  }

  void reset() {
    timer.cancel();
    timerPlay = false;
    currentDuration=0;
    notifyListeners();

  }
}
