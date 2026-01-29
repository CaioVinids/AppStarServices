import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/cliente/home_cliente.dart';


class SobreCli extends StatelessWidget {
  const SobreCli({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Sobre'),
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
              height: 150,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),
              child: const Column(
                children: [
                  Padding(padding: EdgeInsets.all(13),
                  ),
                  Text("Resumo sobre a empresa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                  ), 
                ],
              ),
            ),

            const SizedBox(height: 15), // espaçamento entre os campos

            Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () => { }, // evento on click
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                        child: Icon(Icons.facebook, size: 40, color: Colors.blue.shade900),
                        ),

                     Container(
                       margin: const EdgeInsets.only(left: 20.0, top: 20.0),  
                        child:  const Column(
                          children: [
                            Text("Star Services", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      ),
                      ],
                      ),
                     ),
                      
                    ],
                  ),
                  ),
              ),
            ),

            const SizedBox(height: 15), // espaçamento entre os campos

            Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () => { }, // evento on click
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                        child: Image.asset("imagens/instagram.png", height: 40, width: 40)
                        ),

                     Container(
                       margin: const EdgeInsets.only(left: 20.0, top: 20.0),  
                        child:  const Column(
                          children: [
                            Text("Star Services", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                      ),
                      ],
                      ),
                     ),
                      
                    ],
                  ),
                  ),
              ),
            ),

            const SizedBox(height: 40), // espaçamento entre os campos

            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Email: star.services307@gmail.com", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                   ),
                ],
            ),

            const SizedBox(height: 20), // espaçamento entre os campos

            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Telefone: (11) 4002-8922", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                   ),
                ],
            ),

            const SizedBox(height: 50), // espaçamento entre os campos

            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Horário de Atendimento", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                   ),
                ],
            ),

            const SizedBox(height: 20), // espaçamento entre os campos

            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("09:00 até 17:00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                   ),
                ],
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