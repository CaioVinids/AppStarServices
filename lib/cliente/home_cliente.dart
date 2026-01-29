import 'package:flutter/material.dart';
import 'package:star_services/cliente/categorias.dart';
import 'package:star_services/cliente/informacoes_profissional_cli.dart';
import 'package:star_services/cliente/sobre.dart';
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              height: 150,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const InformacoesProfissionalCli(),
                      ),
                    ),
                  },
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        child: Image.asset("imagens/icone.png",
                            height: 60, width: 80),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0, top: 40.0),
                        width: 180,
                        child: const Column(
                          children: [
                            Text(
                              "Nome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Função Profissional",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
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
                  onPressed: () => {},
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        child: Image.asset("imagens/icone.png",
                            height: 60, width: 80),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0, top: 40.0),
                        width: 180,
                        child: const Column(
                          children: [
                            Text(
                              "Nome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Função Profissional",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ],
                        ),
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
      drawer: const NavigationDrawer(), // declarando o menu hamburguer
    );
  }
}

// Inicio do Menu Hamburguer

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    backgroundColor: const Color.fromRGBO(37, 45, 47, 2),
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
        color: const Color.fromARGB(
            255, 44, 43, 43), // cor superior do menu hamburguer
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
        ),
        child: const Column(
          children: [
            Text(
              'Seja Bem Vindo!',
              style: TextStyle(fontSize: 22, height: 6, color: Colors.white),
            ),
            SizedBox(height: 25),
            Divider(
              thickness: 10,
              height: 5,
              color: Colors.blue,
            ) // linha azul do menu hamburger
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        color: const Color.fromRGBO(
            37, 45, 47, 2), // cor inferior do menu hamburguer
        padding: const EdgeInsets.all(40), // espaçamento dos menus
        child: Wrap(
          runSpacing: 44, // espaçamento vertical
          children: [
            // Menu Home Cliente
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
                  builder: (context) => const CategoriasCli(),
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

                // Comando direcionando para a tela Sobre
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SobreCli(),
                ));
              },
            ),

            // Menu Voltar
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

            const ListTile(),
          ],
        ),
      );
}
