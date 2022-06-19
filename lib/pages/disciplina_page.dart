import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class Disciplina extends StatefulWidget {
  const Disciplina({Key? key}) : super(key: key);

  @override
  State<Disciplina> createState() => _DisciplinaState();
}

class _DisciplinaState extends State<Disciplina> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Conteúdo',
          style: TextStyle(
              fontSize: 24, color: Colors.white),
        ),
        backgroundColor: const Color(0xFFA7AED3),
      ),
      body: const Center(
        child: Text('Página do Conteudo Específico',
          style: TextStyle(
              fontSize: 30
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}