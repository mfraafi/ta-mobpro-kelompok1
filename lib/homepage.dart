import 'package:addpage/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:backdrop/backdrop.dart';
import 'add.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List hero = [
    "Lancelot",
    "Kagura",
    "Akai",
  ];

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text('Hero Catalog'),
      ),
      headerHeight: 120.0,
      backgroundColor: Colors.black,
      frontLayer: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/sage.avif'),
              ),
              title: Text(
                hero[index],
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          );
        },
        itemCount: hero.length,
      ),
      backLayer: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => tambah())),
              );
            },
            child: const Text('Tambah Data'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => const About())),
              );
            },
            child: const Text('About'),
          )
        ],
      ),
    );
  }
}
