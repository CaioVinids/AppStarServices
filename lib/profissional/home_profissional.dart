// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:star_services/profissional/categorias.dart';
import 'package:star_services/profissional/informacoes_profissional.dart';
import 'package:star_services/profissional/minha_conta.dart';
import 'package:star_services/profissional/sobre.dart';
import 'package:star_services/tipo_usuario.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Star Services"),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: const Color.fromARGB(156, 223, 229, 235), // cor de fundo da tela
        child: Column(
          children: [
            Image.asset('imagens/home.png'),

            const Padding(
              padding: EdgeInsets.all(
                  20), // espaçamento da imagem para a linha de texto
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Serviços em Destaque",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
              ],
            ),

            const SizedBox(
              height: 40,
            ),

            Container(
              height: 140,
              width: 350, // tamanho dos menus
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.lightBlue.shade900,
                    width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(
                  Radius.circular(10), // formato da borda
                ),
              ),

              child: SizedBox.expand(
                // evento on click
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InformacoesProfissional(),
                      ),
                    ),
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 5), // altera o posicionamento da imagem
                        child: SizedBox(
                          child: Icon(Icons.account_circle,
                              size: 70, color: Color.fromARGB(255, 0, 90, 131)),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: const [
                            Text(
                              "Nome\nÁrea de atuação\nLocalização",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  height: 1.9,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                            top: 10,
                            left:
                                25), // altera a margin do texto e posicionamento
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 30), // espaçamento entre os containers

            Container(
              height: 140,
              width: 350, // tamanho dos menus
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.lightBlue.shade900,
                    width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(
                  Radius.circular(10), // formato da borda
                ),
              ),

              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () => {
                    // evento on click
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 5), // altera o posicionamento da imagem
                        child: SizedBox(
                          child: Icon(Icons.account_circle,
                              size: 70, color: Color.fromARGB(255, 0, 90, 131)),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: const [
                            Text(
                              "Nome\nÁrea de atuação\nLocalização",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  height: 1.9,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                            top: 10,
                            left:
                                25), // altera a margin do texto e posicionamento
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // barra inferior
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        // A altura do sistema + uma margem de segurança
        height: MediaQuery.of(context).padding.bottom + 2,
      ),
      drawer: NavigationDrawer(), // declarando o menu hamburguer
    );
  }
}

// Inicio do Menu Hamburguer

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color:
            Color.fromARGB(255, 44, 43, 43), // cor superior do menu hamburguer
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: [
            CircleAvatar(
              // onde entrara a imagem do profissional
              radius: 52,
              child: Image.asset("imagens/foto_profissional.png"),
            ),

            SizedBox(height: 15),
            Text(
              'Nome Profissional',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Text(
              'Área de atuação',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 25),
            Divider(
              thickness: 10,
              height: 5,
              color: Colors.blue,
            ) // faixa azul do menu hamburguer
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        color: Color.fromRGBO(37, 45, 47, 2), // cor inferior do menu hamburguer
        padding: const EdgeInsets.all(40), // espaçamento dos menus
        child: Wrap(
          runSpacing: 35, // espaçamento vertical
          children: [
            // Menu Home
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              )),
            ),

            // Menu Minha Conta
            ListTile(
              leading: const Icon(
                Icons.people_alt,
                color: Colors.white,
                size: 30,
              ),
              title: const Text(
                'Minha Conta',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                // fechar a gaveta de navegação antes
                Navigator.pop(context);

                // Comando direcionando para a tela Minha Conta
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MinhaConta(),
                ));
              },
            ),

            // Menu Categorias
            ListTile(
              leading: const Icon(
                Icons.dashboard,
                color: Colors.white,
                size: 30,
              ),
              title: const Text(
                'Categorias',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                // fechar a gaveta de navegação antes
                Navigator.pop(context);

                // Comando direcionando para a tela Categorias
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Categorias(),
                ));
              },
            ),

            // Menu Sobre
            ListTile(
              leading: const Icon(
                Icons.feedback,
                color: Colors.white,
                size: 30,
              ),
              title: const Text(
                'Sobre',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                // fechar a gaveta de navegação antes
                Navigator.pop(context);

                // Comando direcionando para a tela sobre
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Sobre(),
                ));
              },
            ),

            // Menu Sair
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
                size: 30,
              ),
              title: const Text(
                'Sair',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                // 1. Fecha o Drawer primeiro
                Navigator.pop(context);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TipoUsuario(),
                ));
              },
            ),
          ],
        ),
      );
}
