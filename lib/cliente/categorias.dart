import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/cliente/home_cliente.dart';

class CategoriasCli extends StatelessWidget {
  const CategoriasCli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Categorias'),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            child: Icon(Icons.construction_outlined,
                                size: 35, color: Colors.black),
                            width: 50,
                          ),
                          Text(
                            "Construção",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          SizedBox(
                            child: Icon(Icons.arrow_forward,
                                size: 35, color: Colors.black),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            child: Icon(Icons.border_color_rounded,
                                size: 35, color: Colors.black),
                            width: 50,
                          ),
                          Text(
                            "Educação",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          SizedBox(
                            child: Icon(Icons.arrow_forward,
                                size: 35, color: Colors.black),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            child: Icon(Icons.desktop_windows,
                                size: 35, color: Colors.black),
                            width: 50,
                          ),
                          Text(
                            "Tecnologia",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          SizedBox(
                            child: Icon(Icons.arrow_forward,
                                size: 35, color: Colors.black),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            child: Icon(Icons.health_and_safety,
                                size: 35, color: Colors.black),
                            width: 50,
                          ),
                          Text(
                            "Saúde",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          SizedBox(
                            child: Icon(Icons.arrow_forward,
                                size: 35, color: Colors.black),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            child: Icon(Icons.directions_car,
                                size: 35, color: Colors.black),
                            width: 50,
                          ),
                          Text(
                            "Automotivos",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          SizedBox(
                            child: Icon(Icons.arrow_forward,
                                size: 35, color: Colors.black),
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
