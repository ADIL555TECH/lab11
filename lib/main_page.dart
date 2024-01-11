import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatelessWidget {
  final User user;

  const MainPage(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, ${user.email}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}