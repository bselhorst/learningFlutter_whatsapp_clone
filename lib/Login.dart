import 'package:app_whatsapp/Cadastro.dart';
import 'package:app_whatsapp/Components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff075E54),
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "imagens/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(
                          color: Color(0xff075E54),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(
                          color: Color(0xff075E54),
                        ),
                      ),
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Senha",
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        color: Color(0xff075E54),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(
                        color: Color(0xff075E54),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16,
                    bottom: 10,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    child: Text(
                      "Não tem conta? cadastre-se!",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cadastro(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
