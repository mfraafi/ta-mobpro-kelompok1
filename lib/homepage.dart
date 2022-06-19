import 'package:addpage/agents/jett.dart';
import 'package:addpage/utils/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:backdrop/backdrop.dart';
import 'login.dart';
import 'package:flutter/cupertino.dart';
import 'jett.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List hero = [
    "Jett",
    "Sage",
    "Chamber",
    "Killjoy",
    "Sova",
    "Raze",
    "Viper",
    "Omen",
    "Reyna",
    "Pheonix",
    "Skye",
    "Astra",
    "Breach",
    "Brimstone",
    "Fade",
    "Yoru"
  ];

  final lh = [Jett()];

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
        appBar: BackdropAppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'VALORANT AGENTS',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.exit_to_app_outlined),
              onPressed: () {
                AuthService.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
            ),
          ],
        ),
        headerHeight: 50.0,
        backgroundColor: Color(0xFFEF4454),
        frontLayer: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 116,
                height: 158,
                child: Card(
                  color: Colors.grey,
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(''),
                    ),
                    title: Text(
                      hero[index],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => lh[index])));
                    },
                  ),
                ),
              );
            },
            itemCount: hero.length,
          ),
        ),
        backLayer: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About',
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
              Text('Project ini merupakan guide atau penjelesan \n,'
                  'tentang para Agent yang ada di game Valorant \n'
                  'Bertujuan untuk mempermudah player Valorant \n'
                  'dalam memahami agentnya tanpa harus membuka \n'
                  'gamenya. Features: Login, menampilkan, \n'
                  'menampilkan list, tampilan menarik, tema gelap.\n\n@Kelompok_1')
            ],
          ),
        ));
  }
}
