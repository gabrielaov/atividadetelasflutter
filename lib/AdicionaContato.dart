import 'package:flutter/material.dart';
import 'Contato.dart';

class AdicionaContato extends StatefulWidget {
  const AdicionaContato({Key? key}) : super(key: key);

  @override
  _AdicionaContatoState createState() => _AdicionaContatoState();
}

class _AdicionaContatoState extends State<AdicionaContato> {
  late String nome, idade, telefone, email;
  bool ehHomem = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adição de contato")),

      body: Column(
        children: [
          TextField(//nome
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Nome",
            ),
            onChanged: (value) => nome = value,
          ),

          TextField(//idade
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Idade",
            ),
            onChanged: (value) => idade = value,
          ),

          TextField(//telefone
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Telefone",
            ),
            onChanged: (value) => telefone = value,
          ),

          TextField(//email
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
            onChanged: (value) => email = value,
          ),
          Row(
            children: [
              Text('É homem?'),
              Checkbox(//homem ou mulher
                value: ehHomem,
                onChanged: (value) => setState(() => ehHomem = value!),
              ),
            ],
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Contato contatoAdd = Contato(nome, int.parse(idade), telefone, email, ehHomem);
          Navigator.pop(context, contatoAdd );
        },
      ),
    );
  }
}
