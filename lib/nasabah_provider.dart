import 'package:flutter/foundation.dart';

class NasabahProvider extends ChangeNotifier {
  String nama = 'AYU RAT RESMI ARDHA SWARI';
  double saldo = 20000000;

  // Update the saldo attribute by adding or subtracting a value
  void updateSaldo(double amount) {
    saldo += amount; // Adjust this line based on your logic (addition or subtraction)
    notifyListeners(); {
      
    }
    
    
  }
}

