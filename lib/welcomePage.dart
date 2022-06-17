import 'package:addpage/homepage.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/logo-valo.png'),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Welcome to app',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text('Masuk'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
