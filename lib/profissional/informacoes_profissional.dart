import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/profissional/home_profissional.dart';
import 'package:url_launcher/url_launcher.dart';

class InformacoesProfissional extends StatefulWidget {
  const InformacoesProfissional({Key? key}) : super(key: key);

  @override
  State<InformacoesProfissional> createState() =>
      _InformacoesProfissionalState();
}

class _InformacoesProfissionalState extends State<InformacoesProfissional> {
  void _openWhatsAppChat() async {
    String phoneNumber = '5511956241702';
    // 1. Transformamos a String em um objeto Uri
    final Uri url = Uri.parse(
        'https://wa.me/$phoneNumber?text=Olá, tenho interesse no seu serviço');

    // 2. Usamos launchUrl em vez de launch
    if (!await launchUrl(url)) {
      throw Exception('Não foi possível abrir o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Profissional'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(156, 223, 229, 235), // cor de fundo da tela
        child: Column(
          children: [
            const SizedBox(height: 50), // espaçamento superior

            SizedBox(
              height: 150,
              width: 350, // tamanho dos menus

              child: SizedBox.expand(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 50.0, top: 2.0),
                      child: SizedBox(
                        child: Image.asset("imagens/icone.png", height: 70),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25.0, top: 45.0),
                      width: 180, // largura dos textos

                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Nome",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.black),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Área de atuação",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 50,
              width: 350, // tamanho dos menus

              margin: const EdgeInsets.only(left: 75.0),

              child: const Row(
                children: [
                  Text(
                    "Região",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.black),
                  ),
                ],
              ),
            ),

            Container(
              height: 100,
              width: 350, // tamanho dos menus

              margin: const EdgeInsets.only(left: 75.0),

              child: const Row(
                children: [
                  Text(
                    "Descrição",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            Container(
              height: 80,
              width: 240,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 4, 75, 133),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () {
                    _openWhatsAppChat(); // evento on click
                  },
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 60,
                        child: Icon(Icons.chat, size: 40, color: Colors.white),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15.0, top: 20.0),
                        child: const Column(
                          children: [
                            Text(
                              "Saiba Mais",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
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
    );
  }
}
