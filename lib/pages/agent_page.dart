import 'package:flutter/material.dart';
import 'package:projeto_teste/pages/home_page.dart';

class AgentPage extends StatelessWidget {
  const AgentPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Stack(
        //Stack -> pilha
        children: [
          //quem tiver primeiro aparece primeiro
          background(context),
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.099),
              //agentCard(),
              SizedBox(height: 10),

              ///mapCard(context),
            ],
          ))
        ],
        //da onde vai surgir o meu container
      ),
    );
  }
}

appBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: BackButton(
        onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => HomePage(),
              ),
            )),

    titleSpacing: 0,
    title: Text('Nome'),

    elevation: 0, //-> aumenta a sombra debaixo do menu

    //centerTitle: true,
  );
}

background(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      //MediaQuery -> pega as dimensoes da tela
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffFD435B), Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //stops: [],
        ),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        ),
      ),
    ),
  );
}

agentCard() {}
