import 'package:addpage/regist.dart';
import 'package:addpage/utils/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      'assets/logo-valo.png',
                      height: 200,
                    ),
                    Column(
                      children: [
                        const Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(height: 25.0),
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            filled: true),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            AuthService.signIn(_emailController.text,
                                    _passwordController.text)
                                .then((result) {
                              if (result) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(0xFFEF4454),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun? ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          child: Text('Daftar disini',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Regist())));
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
