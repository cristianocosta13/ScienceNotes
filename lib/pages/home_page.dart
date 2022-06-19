import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/biologia_page.dart';
import 'package:sciencenotes/widgets/card_ciencias.dart';
import 'package:sciencenotes/pages/fisica_page.dart';
import 'package:sciencenotes/pages/quimica_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFA7AED3),
        title: const Text(
          'Sciences Notes',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CardCiencias(
                nomeCiencias: 'Física',
                imagemCiencias: 'https://cdn5.colorir.com/desenhos/color/202033/aula-de-quimica-colegio-1605317.jpg',
                page_direction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FisicaPage();
                      },
                    ),
                  );
                },
            ),
            CardCiencias(
              nomeCiencias: 'Química',
              imagemCiencias: 'https://images.vexels.com/media/users/3/153063/isolated/lists/632ace12b5d92883c67b0b342046dacc-icone-de-traco-de-frasco-de-quimica.png',
              page_direction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuimicaPage();
                    },
                  ),
                );
              },
            ),
            CardCiencias(
                nomeCiencias: 'Biologia',
                imagemCiencias: 'https://w7.pngwing.com/pngs/576/80/png-transparent-biology-thumbnail.png',
                page_direction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BiologiaPage();
                      },
                    ),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }

  // void pageFisica() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) {
  //         return FisicaPage();
  //       },
  //     ),
  //   );
  // }

}