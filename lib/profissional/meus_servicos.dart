import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/profissional/cadastrar_servicos.dart';
import 'package:star_services/profissional/consulta_servicos.dart';
import 'package:star_services/profissional/home_profissional.dart';

class MeusServicos extends StatelessWidget {
  const MeusServicos({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Meus Serviços'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Container(
        color: const Color.fromARGB(156, 223, 229, 235), // cor de fundo da tela
        child: Padding(
          // Adiciona margem nas laterais
          padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 40),

            Container(
              height: 70, // tamanho dos menus
               decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),

              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () => { 
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const CadastrarServicos(),
                      ), 
                    ),
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                         child: Icon(Icons.my_library_add_outlined, size: 35, color: Colors.black),
                         width: 50,
                        ),
                      Text("Cadastro de Serviços", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                      ),
                      SizedBox(
                        child: Icon(Icons.arrow_forward, size: 35, color: Colors.black),
                        width: 45,
                        ),
                    ],
                  )),
              ),
            ),

            const SizedBox(height: 25), // espaçamento entre os menus

            Container(
              height: 70, // tamanho dos menus
               decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),

              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ConsultaServicos(),
                      ), 
                    ),
                  }, // evento onclick consulta serviços

                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Icon(Icons.menu_book_rounded, size: 35, color: Colors.black),
                        width: 50,
                        ),
                      Text("Consulta Serviços", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                      ),
                      SizedBox(
                        child: Icon(Icons.arrow_forward, size: 35, color: Colors.black),
                        width: 45,
                        ),
                    ],
                  )),
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