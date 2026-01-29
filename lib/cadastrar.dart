import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:star_services/profissional/login.dart';

class Cadastrar extends StatefulWidget {
  const Cadastrar({Key? key}) : super(key: key);

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

TextEditingController nome = TextEditingController();
TextEditingController sobrenome = TextEditingController();
TextEditingController cpf = TextEditingController();
TextEditingController telefone = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController cep = TextEditingController();
TextEditingController endereco = TextEditingController();
TextEditingController bairro = TextEditingController();
TextEditingController senha = TextEditingController();
TextEditingController confirmarSenha = TextEditingController();

Future<void> salvarDados(
    String nome,
    String sobrenome,
    int cpf,
    int telefone,
    String email,
    int cep,
    String endereco,
    String bairro,
    String senha,
    String confirmarSenha) async {
  //async chama api e aguarda retorno
  final url = Uri.parse("https://172.16.88.66:8083/solicitacao/adicionar");
  final headers = {"Content-type": "application/json"};

  var jsonBody = jsonEncode({
    'nome': nome,
    'sobrenome': sobrenome,
    'cpf': cpf,
    'telefone': telefone,
    'email': email,
    'cep': cep,
    'endereco': endereco,
    'bairro': bairro,
    'senha': senha,
    'confirmarSenha': confirmarSenha,
  });
  final response = await http.post(url, headers: headers, body: jsonBody);
  debugPrint('Status code: ${response.statusCode}');
  debugPrint('Body: ${response.body}');
}

void clearText() {
  nome.clear();
  sobrenome.clear();
  cpf.clear();
  telefone.clear();
  email.clear();
  cep.clear();
  endereco.clear();
  bairro.clear();
  senha.clear();
  confirmarSenha.clear();
}

//cadastro com sucesso
showAleraCadastro(BuildContext context) {
  // configura o button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Login()));
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: const Text("Sucesso!!!"),
    content: const Text("Cadastro realizado com sucesso!!!"),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

class _CadastrarState extends State<Cadastrar> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro Profissional"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 200, top: 40, right: 200),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.person_outline, size: 30),
                      hintText: 'Nome'),
                  controller: nome,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome é obrigatório!';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.person, size: 30),
                      hintText: 'Sobrenome'),
                  controller: sobrenome,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.person, size: 30),
                      hintText: 'CPF'),
                  controller: cpf,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.phone, size: 30),
                      hintText: 'Telefone Comercial / Celular'),
                  controller: telefone,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail, size: 30),
                      hintText: 'E-mail'),
                  controller: email,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.map, size: 30),
                      hintText: 'CEP'),
                  controller: cep,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.room, size: 30),
                      hintText: 'Endereço'),
                  controller: endereco,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.local_library, size: 30),
                      hintText: 'Bairro'),
                  controller: bairro,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.lock, size: 30),
                      hintText: 'Senha'),
                  controller: senha,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.lightBlue.shade900, width: 2),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.lock_outline, size: 30),
                      hintText: 'Confirmar senha'),
                  controller: confirmarSenha,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 55,
                width: 200,
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
                          "Cadastrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      formkey.currentState?.validate();
                      salvarDados(
                          nome.text,
                          sobrenome.text,
                          cpf.hashCode,
                          telefone.hashCode,
                          email.text,
                          cep.hashCode,
                          endereco.text,
                          bairro.text,
                          senha.text,
                          confirmarSenha.text);
                      clearText();
                      showAleraCadastro(context);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
