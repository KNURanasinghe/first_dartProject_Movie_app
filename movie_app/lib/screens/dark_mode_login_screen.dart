import 'package:flutter/material.dart';

import 'loginscreen.dart';
import 'movie_file_dark.dart';
import 'register_page_dark.dart';

// ignore: must_be_immutable
class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen1> {
  final mail = TextEditingController();
  final pw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.light_mode,
                      size: 50,
                      color: Colors.white,
                    )),
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
              height: 40,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Movie_ScreenDark()));
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
                      builder: (context) => const RegistrationPageDark(),
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
                  style: TextStyle(
                      color: Color.fromARGB(255, 254, 251, 251), fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
