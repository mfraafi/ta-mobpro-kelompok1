import 'package:addpage/homepage.dart';
import 'package:flutter/material.dart';

class Jett extends StatelessWidget {
  const Jett({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEF4454),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: ((context) => HomePage())));
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: [
            Image.asset(
              'assets/jett.png',
              height: 50,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'JETT',
              style: TextStyle(
                  color: Color(0xFFEF4454), fontWeight: FontWeight.bold),
            ),
            Container(
              child: Text(
                'Jett berasal dari Korea Selatan. Gaya bertarung Jett adalah mengandalkan kecepatannya. Jett di sini memiliki kelebihan pada pergerakan yang  gesit dan jago menghindar. Hal ini memungkinkannya untuk memasuki ke area-area berbahaya yang sulit bisa dilakukan karakter lain. Kelebihan yang patut ditakuti adalah memotong musuh sebelum tahu apa yang menimpa mereka.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )),
      ),
    );
  }
}
