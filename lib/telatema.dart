import 'package:flutter/material.dart';
import 'package:turismosp/telaedificios.dart';
import 'package:turismosp/telamuseus.dart';
 
class TelaTema extends StatelessWidget {
  const TelaTema({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Temas'), 
        backgroundColor: const Color.fromARGB(255, 167, 6, 231), 
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // imagem do fundo da tela
          Image.asset(
            'assets/sp_de_noite.jpg',
            fit: BoxFit.cover,
          ),
          // conteudo da tela
          const Positioned(
            top: 80.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Seleção de Tema',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 167, 6, 231),
                ),
              ),
            ),
          ),
          // botoes representados por icones de acordo com os temas oferecidos
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // primeira linha de iconbuttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaEdificio(),
                    ),
                  );
          },
          child: const Icon(Icons.apartment),
        ),
                  ElevatedButton(
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaMuseu(),
                    ),
                  );
          },
          child: const Icon(Icons.museum),
        ),
        ElevatedButton(
          onPressed: () {
            // sera feito em breve
          },
          child: const Icon(Icons.shop),
        ),
                  ],
                ),
                const SizedBox(height: 20.0),
                // segunda linha de iconbuttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                ElevatedButton(
          onPressed: () {
            // sera feito em breve
          },
          child: const Icon(Icons.star),
        ),
        ElevatedButton(
          onPressed: () {
            // sera feito em breve
          },
          child: const Icon(Icons.park),
        ),
                  ElevatedButton(
          onPressed: () {
            // sera feito em breve
          },
          child: const Icon(Icons.calendar_month),
        ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}