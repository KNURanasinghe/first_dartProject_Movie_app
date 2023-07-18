import 'package:flutter/material.dart';

import 'dark_mode_login_screen.dart';
import 'movie file.dart';
import 'register_page.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final mail = TextEditingController();
  final pw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      minimum: EdgeInsets.zero,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {
                      // ignore: avoid_print
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen1(),
                          ));
                    },
                    icon: const Icon(
                      Icons.dark_mode,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.purpleAccent),
              child: const Icon(
                Icons.face_6,
                size: 120,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: mail,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    iconColor: Colors.blue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: pw,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    iconColor: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                if (mail.text == "admin" && pw.text == "123") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Movie_Screen(),
                      ));
                } else {
                  // ignore: avoid_print
                  print("Invalid password");
                }
              },
              child: const Text(
                "LogIn",
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationPage(),
                    ));
              },
              child: const Text(
                "Register?",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password ?',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
