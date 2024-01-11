import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lab11/login_screen.dart';
import 'main_page.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await register(context);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> register(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print('User registered: ${userCredential.user?.email}');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    } catch (e) {
      print('Error during registration: $e');
    }
  }}