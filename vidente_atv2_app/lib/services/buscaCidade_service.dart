import 'package:flutter/material.dart';
import 'package:vidente_atv2_app/controller/buscaCidade_controller.dart';
import 'package:vidente_atv2_app/widgets/home.dart';
import 'package:http/http.dart';
import 'package:vidente_atv2_app/models/busca_cidade.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class BuscaCidade extends StatefulWidget {
  final String cidade;

  const BuscaCidade({Key key, this.cidade}) : super(key: key);

  
  @override
  _BuscaCidadeState createState() => _BuscaCidadeState();
}

class _BuscaCidadeState extends State<BuscaCidade> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidente'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Busca Cidade', style: TextStyle(fontSize: 30,)),
            Padding(padding: EdgeInsets.all(10)),
            const Text('Informe o nome da Cidade',style: TextStyle(fontSize: 30,)),   
            TextField(
              //controller: buscaCidade_controller,
              onChanged: (String cidade) async {
                if (cidade != 'Key') {
                return;
                }
              }
            ),
            TextButton(
              child: Text('Verificar'),
              onPressed: () async {
                String cidade;
                BuscaCidadeController.instance.txtInput = cidade;
                await buscaCidadeService().verificarCidade();
                
            /*Se você tiver uma rota limitada (como uma ou duas), pode usar o método Navigator.push();
             *O método push() adiciona uma rota à pilha das rotas gerenciadas pelo Navegador.
             */    
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                  builder: (context) => Home()
                  ),
                ); 
              }, 
             )
          ],
        ),
      )
    );
  }
  buscaCidadeService() {}
}