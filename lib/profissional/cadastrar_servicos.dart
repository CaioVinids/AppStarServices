import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/profissional/home_profissional.dart';

class CadastrarServicos extends StatelessWidget {
  const CadastrarServicos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Cadastrar Serviços'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,

        color: const Color.fromARGB(156, 223, 229, 235), // cor de fundo da tela
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50), // espaçamento superior

              Container(
                height: 70,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.lightBlue.shade900,
                      width: 2), // cor da borda do menu e largura da borda
                  color: Colors.white, // cor do fundo do menu
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10), // formato da borda
                  ),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(13),
                    ),
                    TextField(
                      autofocus: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Nome / Nome da Empresa',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15), // espaçamento entre os campos

              Container(
                height: 70,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.lightBlue.shade900,
                      width: 2), // cor da borda do menu e largura da borda
                  color: Colors.white, // cor do fundo do menu
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10), // formato da borda
                  ),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(13),
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Área de atuação',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15), // espaçamento entre os campos

              Container(
                height: 70,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.lightBlue.shade900,
                      width: 2), // cor da borda do menu e largura da borda
                  color: Colors.white, // cor do fundo do menu
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10), // formato da borda
                  ),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(13),
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Região - SP',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15), // espaçamento entre os campos

              Container(
                height: 120,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.lightBlue.shade900,
                      width: 2), // cor da borda do menu e largura da borda
                  color: Colors.white, // cor do fundo do menu
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10), // formato da borda
                  ),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(13),
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Descrição',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50), // espaçamento entre os campos

              Container(
                height: 55,
                width: 240,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 4, 75, 133),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Salvar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {}, // on click
                  ),
                ),
              ),
            ],
          ),
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
