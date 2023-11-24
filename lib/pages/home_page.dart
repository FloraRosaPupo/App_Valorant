//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:projeto_teste/pages/agent_page.dart';
import 'package:projeto_teste/shared/contants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Stack(
        //Stack -> pilha
        children: [
          //quem tiver primeiro aparece primeiro
          background(context),
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.099),
              agentCard(context),
              SizedBox(height: 10),
              mapCard(context),
            ],
          ))
        ],
        //da onde vai surgir o meu container
      ),
    );
  }
}

appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.all(10),
      child: Image.network(LOGO_00,),
    ),
    titleSpacing: 0,
    title: SizedBox(
      width: 150,
      height: 150,
      child: Image.network(LOGO_01,),
    ),

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

agentCard(context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AgentPage(),
          )),
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    ),
  );
}

mapCard(context) {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Mapas',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 10,
      ),
      Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              color: Colors.white,
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    ],
  ));
}
