import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Certifique-se que este caminho está correto conforme sua pasta lib
import 'package:star_services/tipo_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configura a barra do sistema antes do app carregar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Isso garante que qualquer BottomNavigationBar futura siga seu padrão
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Timer para navegar
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TipoUsuario()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Repetir aqui garante que a barra fique preta na Splash
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/fundo_splash.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset("imagens/logo.png"),
        ),
      ),
    );
  }
}
