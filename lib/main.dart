import 'package:flutter/material.dart';
import 'package:turismosp/telacadastro.dart';
import 'package:turismosp/telatema.dart'; 

void main() {
  runApp(const AppSP());
}

class AppSP extends StatelessWidget {
  const AppSP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLogin(), // definindo como tela inicial
    );
  }
}

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // imagem do fundo da tela
          Image.asset(
            'assets/sp_cidade.jpg',
            fit: BoxFit.cover,
          ),
          // conteudo da tela
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // adicionando text para titulo
              const Text(
                'TURISMOSP',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 50.0), // define o espaço entre o text e os textfield
              // campos de email e senha
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0), // espaçamento entre os textfield e os buttons
              // botao de entrar
              ElevatedButton(
                onPressed: () {
                  // so ta levando pra tela de temas por enquanto
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaTema(),
                    ),
                  );
                },
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 20.0), // espaçamento entre os buttons
              // botao de cadastrar
              ElevatedButton(
                onPressed: () {
                  // leva para a tela de cadastro
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaCadastro(),
                    ),
                  );
                },
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}