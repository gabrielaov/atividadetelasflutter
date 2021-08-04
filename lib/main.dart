import 'package:atividadetelasflutter/AdicionaContato.dart';
import 'package:atividadetelasflutter/ListaContatos.dart';
import 'package:atividadetelasflutter/DetalhesDoContato.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => ListaContatos(),
      '/adicionaContato' : (context) => AdicionaContato(),
      '/detalhesDoContato' : (context) => DetalhesDoContato(),
    },
  ));
}


