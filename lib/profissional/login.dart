import 'package:flutter/material.dart';
import 'package:star_services/cadastrar.dart';
import 'package:star_services/profissional/home_profissional.dart';


class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Login",),
        foregroundColor: Colors.white,
        ),
        
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          const Divider(thickness: 5, height: 1, color: Colors.white),
         Image.asset("imagens/login.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              Container(width: 392, height: 5, color: Colors.blue,),
            ],
          ),  
          const Padding(
                padding: EdgeInsets.all(8), // espaçamento da linha azul para as label
          ),

          Container( // Linha E-MAIL
            height: 52, // tamanho da altura da label
            padding: const EdgeInsets.symmetric(horizontal: 18), // comprimento da linha da label
            child: TextFormField(
         // autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "E-mail",
              labelStyle: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 19,
                ), 
              ),
              style: const TextStyle(fontSize: 20), // tamanho da fonte dentro da caixa de texto
            ),
          ),

          const Padding(
                padding: EdgeInsets.all(10), // espaçamento das label
          ),

          Container( // Linha SENHA
            height: 52, // tamanho da altura da label
            padding: const EdgeInsets.symmetric(horizontal: 18), // comprimento da linha da label
            child: TextFormField(
         // autofocus: true,
            keyboardType: TextInputType.text,
            obscureText: true, // não mostra a senha
            decoration: const InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 19,
                ), 
              ),
              style: const TextStyle(fontSize: 20), // tamanho da fonte dentro da caixa de texto
            ),
          ),

          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: TextButton(
              child: const Text("Esqueceu a senha ?", style: TextStyle(fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.right,
              ),
              onPressed: () {},
              ),
          ),

          const SizedBox(
            height: 15,
            ),

            Container(
              height: 55,
              width: 240,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 4, 75, 133),
                  borderRadius: BorderRadius.all(Radius.circular(15),
                  ),
                ),

                child: SizedBox.expand(
                  child:TextButton(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text("Entrar", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18,
                        ),
                        ),
                      ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => const Home(),
                            ),
                        );
                      },
                    ),
                ),
                ),

                const SizedBox(
                  height: 35,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                    Text("Não possui conta ?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20,
                    ),
                    ),
                  ],
                ),  

                const SizedBox(
                  height: 20,
                  ),

              Container(
                height: 55,
                width: 240,
                
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlue.shade900, width: 2), // cor da borda do botão e largura da borda
                  color: Colors.white, // cor do fundo do botão
                  borderRadius: const BorderRadius.all(Radius.circular(15),
                  ),
                ),

                child: SizedBox.expand(
                  child:TextButton(   
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text("Cadastre-se", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 6, 73, 124), fontSize: 18,
                        ),
                        ),
                      ],
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const Cadastrar(),
                          ),
                          ),
                      },
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









