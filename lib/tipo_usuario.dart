import 'package:flutter/material.dart';
import 'cliente/home_cliente.dart';
import 'profissional/login.dart';

class TipoUsuario extends StatefulWidget {
  const TipoUsuario({Key? key}) : super(key: key);

  @override
  _TipoUsuarioState createState() => _TipoUsuarioState();
}

class _TipoUsuarioState extends State<TipoUsuario> {
  void _abrirHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  void _abrirLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Seja Bem vindo !"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Image.asset("imagens/tipoUsuario.jpeg"),
        const Padding(
          padding: EdgeInsets.all(10),
        ),
        const Text(
          "O que você precisa?",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 392,
              height: 5,
              color: Colors.blue,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 392,
              height: 5,
              color: Colors.blue,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _abrirHome,
              child: Image.asset(
                "imagens/ic1.png",
                width: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            GestureDetector(
              onTap: _abrirLogin,
              child: Image.asset("imagens/ic2.png", width: 150),
            ),
          ],
        ),
      ]),
      // barra inferior
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        // A altura do sistema + uma margem de segurança
        height: MediaQuery.of(context).padding.bottom + 2,
      ),
    );
  }
}
