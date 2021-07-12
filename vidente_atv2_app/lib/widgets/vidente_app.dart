import 'package:flutter/material.dart';
import 'package:vidente_atv2_app/controller/tema_controller.dart';
import 'package:vidente_atv2_app/widgets/home.dart';
import 'package:vidente_atv2_app/services/buscaCidade_service.dart';

class VidenteApp extends StatelessWidget {
  final String cidade;

  const VidenteApp({Key key, this.cidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: TemaController.instancia, 
      builder: (context, child) {
        return MaterialApp(
          title: 'Vidente',
          theme: TemaController.instancia.usarTemaEscuro
            ? ThemeData.dark()
            : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    );
  }
}