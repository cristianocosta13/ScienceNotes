import 'package:flutter/material.dart';
import 'package:sciencenotes/widgets/card_conteudo.dart';
import 'package:sciencenotes/domain/conteudo.dart';

class ListaConteudo extends StatefulWidget {
  final Conteudo conteudo1;
  final Conteudo conteudo2;
  final Conteudo conteudo3;
  final Conteudo conteudo4;
  final Conteudo conteudo5;
  final Conteudo conteudo6;
  final Conteudo conteudo7;
  final Conteudo conteudo8;
  final Conteudo conteudo9;
  final Conteudo conteudo10;

  const ListaConteudo({
    Key? key,
    required this.conteudo1, required this.conteudo2, required this.conteudo3,
    required this.conteudo4, required this.conteudo5, required this.conteudo6,
    required this.conteudo7, required this.conteudo8, required this.conteudo9,
    required this.conteudo10,
  }) : super(key: key);

  @override
  State<ListaConteudo> createState() => _ListaConteudoState();
}

class _ListaConteudoState extends State<ListaConteudo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFE9F5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CardConteudo(conteudo: widget.conteudo1),
            CardConteudo(conteudo: widget.conteudo2),
            CardConteudo(conteudo: widget.conteudo3),
            CardConteudo(conteudo: widget.conteudo4),
            CardConteudo(conteudo: widget.conteudo5),
            CardConteudo(conteudo: widget.conteudo6),
            CardConteudo(conteudo: widget.conteudo7),
            CardConteudo(conteudo: widget.conteudo8),
            CardConteudo(conteudo: widget.conteudo9),
            CardConteudo(conteudo: widget.conteudo10),
          ],
        ),
      ),
    );
  }
}