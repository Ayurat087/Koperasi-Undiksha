import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
import 'menuUtama.dart';
import 'dummy_page.dart';
import 'nasabah_provider.dart';
import 'cekSaldo.dart';
import 'transfer_page.dart';
import 'deposito.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('is_logged_in') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (_) => NasabahProvider(),
      child: MyApp(isLoggedIn: isLoggedIn),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const MenuUtama() : const LoginPage(),
      routes: {
        '/login': (_) => const LoginPage(),
        '/cek_saldo': (_) => const CekSaldoPage(),
        '/transfer': (_) => const TransferPage(),
        '/deposito': (_) => const DepositoPage(),
        '/pembayaran': (_) => const DummyPage(title: 'Pembayaran'),
        '/pinjaman': (_) => const DummyPage(title: 'Pinjaman'),
        '/mutasi': (_) => const DummyPage(title: 'Mutasi'),
        '/setting': (_) => const DummyPage(title: 'Setting'),
        '/qrcode': (_) => const DummyPage(title: 'QR Code'),
        '/profile': (_) => const DummyPage(title: 'Profile'),
      },
    );
  }
}