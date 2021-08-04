import 'package:flutter/material.dart';

import 'Contato.dart';

class DetalhesDoContato extends StatefulWidget {
  const DetalhesDoContato({Key? key}) : super(key: key);

  @override
  _DetalhesDoContatoState createState() => _DetalhesDoContatoState();
}

class _DetalhesDoContatoState extends State<DetalhesDoContato> {
  @override
  Widget build(BuildContext context) {

    Contato contatoDetalhado = ModalRoute.of(context)!.settings.arguments as Contato;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do ${contatoDetalhado.nome}"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Nome: '),
                  Text(contatoDetalhado.nome),
                ],
              ),
              Row(
                children: [
                  Text('Idade: '),
                  Text(contatoDetalhado.idade.toString()),
                ],
              ),
              Row(
                children: [
                  Text('Telefone: '),
                  Text(contatoDetalhado.telefone),
                ],
              ),
              Row(
                children: [
                  Text('Email: '),
                  Text(contatoDetalhado.email),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
