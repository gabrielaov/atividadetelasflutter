import 'package:atividadetelasflutter/AdicionaContato.dart';
import 'package:atividadetelasflutter/Contato.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  _ListaContatosState createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contato> meusContatos = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
      ),

      body: ListView.builder(
          itemCount: meusContatos.length,
          itemBuilder: (context, indice) {
            return Card(
                child: ListTile(
                  leading: (meusContatos[indice].ehHomem)?Icon(Icons.handyman):Icon(Icons.person),
                  title: Text('Nome: ${meusContatos[indice].nome}'),
                  subtitle: Text('Fone: ${meusContatos[indice].telefone}'),
                  trailing: FloatingActionButton(
                    child: Icon(Icons.delete_forever),
                    onPressed: () => setState(() => meusContatos.removeAt(indice)),
                    heroTag: null,
                  ),
                  onTap: () => Navigator.pushNamed(context, '/detalhesDoContato', arguments: meusContatos[indice]),
                ),
            );
          }),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () async{
          Contato novoContato = await Navigator.push(context, MaterialPageRoute(builder: (_) => AdicionaContato()));
          if (novoContato != null){
            setState(() => meusContatos.add(novoContato));
          }
        }
      ),
    );
  }
}
