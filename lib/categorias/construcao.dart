import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:star_services/profissional/home_profissional.dart';

class ConstrucaoProf extends StatefulWidget {
  const ConstrucaoProf({Key? key}) : super(key: key);

  @override
  State<ConstrucaoProf> createState() => _ConstrucaoProfState();
}

class _ConstrucaoProfState extends State<ConstrucaoProf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Construção'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Row(
            children: [FiltroRegiao(), FiltroServico()],
          ),
          const Destaques(),
          const Container1(),
          const Container2(),
          const Container3(),
        ],
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

class FiltroRegiao extends StatelessWidget {
  final dropValue1 = ValueNotifier('');
  final dropOpcoes1 = [
    'Zona Norte',
    'Zona Sul',
    'Zona Leste',
    'Zona Oeste',
  ];
  FiltroRegiao({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 14.5, top: 65),
      padding: const EdgeInsets.only(left: 8, top: 4, right: 6, bottom: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: const Color.fromARGB(255, 0, 90, 131), width: 2.3)),
      child: ValueListenableBuilder(
          valueListenable: dropValue1,
          builder: (BuildContext context, String value, _) {
            return SizedBox(
              width: 154,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 0.0,
                  isExpanded: true,
                  icon: const Icon(
                    Icons.format_list_bulleted,
                    size: 36.0,
                    color: Colors.black,
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  hint: const Text(
                    'Região',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  value: (value.isEmpty) ? null : value,
                  onChanged: (escolha) => dropValue1.value = escolha.toString(),
                  items: dropOpcoes1
                      .map((op) => DropdownMenuItem(
                            value: op,
                            child: Text(op),
                          ))
                      .toList(),
                ),
              ),
            );
          }),
    );
  }
}

class FiltroServico extends StatelessWidget {
  final dropValue2 = ValueNotifier('');
  final dropOpcoes2 = [
    'Automotivo',
    'Tecnologia',
    'Educação',
    'Construção',
    'Saúde'
  ];
  FiltroServico({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.5, top: 65),
      padding: const EdgeInsets.only(left: 8, top: 4, right: 6, bottom: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: const Color.fromARGB(255, 0, 90, 131), width: 2.3)),
      child: ValueListenableBuilder(
          valueListenable: dropValue2,
          builder: (BuildContext context, String value, _) {
            return SizedBox(
              width: 157,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  iconSize: 0.0,
                  isExpanded: true,
                  icon: const Icon(
                    Icons.format_list_bulleted,
                    size: 36.0,
                    color: Colors.black,
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  hint: const Text(
                    'Serviços',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  value: (value.isEmpty) ? null : value,
                  onChanged: (escolha) => dropValue2.value = escolha.toString(),
                  items: dropOpcoes2
                      .map(
                        (op) => DropdownMenuItem(
                          value: op,
                          child: Text(op),
                        ),
                      )
                      .toList(),
                ),
              ),
            );
          }),
    );
  }
}

class Destaques extends StatelessWidget {
  const Destaques({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "Profissionais em Destaque",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
      padding: const EdgeInsets.only(top: 37.5),
    );
  }
}

class Container1 extends StatelessWidget {
  const Container1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14, right: 28, bottom: 23),
              child: Icon(
                Icons.account_circle,
                size: 63.5,
                color: Color.fromARGB(255, 0, 90, 131),
              ),
            ),
            Text(
              "Nome\nÁrea de atuação\nLocalização",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                height: 1.9,
              ),
            ),
          ],
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 90, 131),
              width: 2.3,
            ),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(top: 10.7, left: 19, right: 19),
        padding: const EdgeInsets.all(10.5),
      ),
      onTap: () {},
    );
  }
}

class Container2 extends StatelessWidget {
  const Container2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14, right: 28, bottom: 23),
              child: Icon(
                Icons.account_circle,
                size: 63.5,
                color: Color.fromARGB(255, 0, 90, 131),
              ),
            ),
            Text(
              "Nome\nÁrea de atuação\nLocalização",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                height: 1.9,
              ),
            ),
          ],
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 90, 131),
              width: 2.3,
            ),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(top: 11.7, left: 19, right: 19),
        padding: const EdgeInsets.all(10.5),
      ),
      onTap: () {},
    );
  }
}

class Container3 extends StatelessWidget {
  const Container3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14, right: 28, bottom: 23),
              child: Icon(
                Icons.account_circle,
                size: 63.5,
                color: Color.fromARGB(255, 0, 90, 131),
              ),
            ),
            Text(
              "Nome\nÁrea de atuação\nLocalização",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19,
                height: 1.9,
              ),
            ),
          ],
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 90, 131),
              width: 2.3,
            ),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(top: 11.7, left: 19, right: 19),
        padding: const EdgeInsets.all(10.5),
      ),
      onTap: () {},
    );
  }
}
