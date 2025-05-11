import 'package:flutter/foundation.dart';

class NasabahProvider extends ChangeNotifier {
  String nama = 'AYU RAT RESMI ARDHA SWARI';
  double saldo = 20000000;

  void updateSaldo(double baru) {
    saldo = baru;
    notifyListeners();
  }
}

