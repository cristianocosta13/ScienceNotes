import 'package:flutter/material.dart';
import 'package:sciencenotes/pages/home_page.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFA7AED3),
        title: const Text(
          'Science Notes',
          style: TextStyle(fontSize: 24,color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFFDFE9F5),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      Image.network("https://kultivi.com/wp-content/uploads/2019/07/tecnicas-de-estudo-Kultivi.jpg"),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: onPressedButton,
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFA7AED3),
                        ),
                      ),
                ],
            ),
        ),
      ),
    );
  }

  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }

}