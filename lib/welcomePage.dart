import 'package:addpage/homepage.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F1925),
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
                  'VALORANT AGENTS',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xFFEF4454),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    'Masuk',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
