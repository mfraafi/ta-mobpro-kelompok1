import 'package:addpage/login.dart';
import 'package:addpage/utils/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(const Regist());
}

class Regist extends StatefulWidget {
  const Regist({Key? key}) : super(key: key);

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Form(
            key: _formKey,
            child: Scaffold(
              backgroundColor: Color(0xFF0F1925),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/logo-valo-2.png',
                      height: 200,
                    ),
                    Column(
                      children: [
                        const Text(
                          'REGIST',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                      child: Container(
                        child: TextFormField(
                          controller: _emailController,
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'Please enter E-mail';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Email: ',
                              hintText: 'Masukkan Email Anda',
                              fillColor: Colors.white.withOpacity(0.8),
                              labelStyle: TextStyle(color: Color(0xFFEF4454)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              filled: true),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Password: ',
                            hintText: 'Masukkan Password Anda',
                            fillColor: Colors.white.withOpacity(0.8),
                            labelStyle: TextStyle(color: Color(0xFFEF4454)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          AuthService.signUp(_emailController.text,
                                  _passwordController.text)
                              .then((result) {
                            if (result) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            }
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xFFEF4454),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
