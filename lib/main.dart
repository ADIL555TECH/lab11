import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyASO8Zz7JACANLj0Ij53buVs1sMKmjbYZ0',
      appId: '1:544323617021:android:0469f088a6828ffcc83e94',
      messagingSenderId: '544323617021',
      projectId: 'lab11-a5ed9',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'week11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}