/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
 * design:dribble.com
 */
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'components/wallet_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(WalletAppClone());
}

class WalletAppClone extends StatelessWidget {
  static const String path = 'lib/src/walletapp_ui/main.dart';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WalletApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}