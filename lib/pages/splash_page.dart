import 'package:flutter/material.dart';
import 'package:projeto_teste/pages/agent_page.dart';
import 'package:projeto_teste/pages/home_page.dart';
import 'package:projeto_teste/shared/contants.dart';

//essa pag é no formato Stateful por conta da contagem que a pagina vai ter pra passar pra proxima pagina
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //definindo o tempo que vai ficar na pagina
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFD435B), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: [],
          ),
        ),
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            child: Image.network(
              LOGO_00,
            ),
          ),
        ),
      ),
    );
  }
}
