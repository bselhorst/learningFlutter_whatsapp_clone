import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _emailUsuario = "";

  Future _recuperarDadosUsuario() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    final user = FirebaseAuth.instance.currentUser;
    String? _email = "";
    if (user != null) {
      _email = user.email;
    }

    setState(() {
      _emailUsuario = _email!;
    });
  }

  @override
  void initState() {
    _recuperarDadosUsuario();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
      ),
      body: Container(
        child: Text(_emailUsuario),
      ),
    );
  }
}
