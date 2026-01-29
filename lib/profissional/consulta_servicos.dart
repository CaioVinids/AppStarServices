import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/profissional/editar_servico.dart';
import 'package:star_services/profissional/home_profissional.dart';




class ConsultaServicos extends StatelessWidget {
  const ConsultaServicos({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Consulta Serviços'),
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
              const SizedBox(height: 60), // espaçamento superior

            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () => { // evento onclick
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const EditarServico(),
                      ),
                    ),
                },

                 child: const Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     Padding(padding: EdgeInsets.all(13)
                     ),
                     Text("Nome / Nome da Empresa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 15),

                     Text("Área de atuação", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 15),

                     Text("Região - SP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 15),

                     Text("Descrição", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 20), // espaçamento

                     SizedBox(
                        child: Icon(Icons.edit_calendar_outlined, size: 35, color: Colors.black),
                      ),
                   ],
                   
                 ),
                 ),
              ),
            ),

            const SizedBox(height: 40), // espaçamento entre os campos

            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do menu e largura da borda
                color: Colors.white, // cor do fundo do menu
                borderRadius: const BorderRadius.all(Radius.circular(10), // formato da borda
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(onPressed: () => { }, // evento onclick
                 child: const Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                     Padding(padding: EdgeInsets.all(13)
                     ),
                     Text("Nome / Nome da Empresa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 15),

                     Text("Área de atuação", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 15),

                     Text("Região - SP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 15),

                     Text("Descrição", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                     ),

                     SizedBox(height: 20), // espaçamento

                     SizedBox(
                        child: Icon(Icons.edit_calendar_outlined, size: 35, color: Colors.black),
                      ),
                   ],
                   
                 ),
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