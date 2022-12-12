import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Color(0xff075E54),
      ),
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
                    "imagens/usuario.png",
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
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Nome",
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
                      "Cadastrar",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
