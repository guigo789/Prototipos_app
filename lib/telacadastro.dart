import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // codigo da appbar
        title: const Text('Cadastro'), // titulo da appbar
        backgroundColor: const Color.fromARGB(255, 231, 216, 6), // cor da appbar
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // imagem do fundo da tela
          Image.asset(
            'assets/sp_cidade.jpg',
            fit: BoxFit.cover,
          ),
          // conteudo da tela
          const Positioned(
            top: 120.0, // utilizado para ajustar a posição do Text
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'TURISMOSP',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
           //  campos de email e senha
          Center(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // botao de cadastrar
                  ElevatedButton(
                    onPressed: () {
                      //por enquanto ta voltando apenas para telalogin
                      Navigator.pop(context);
                      
                    },
                    child: const Text('Cadastrar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}