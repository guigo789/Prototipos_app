import 'package:flutter/material.dart';

class TelaEdificio extends StatelessWidget {
  const TelaEdificio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edifícios Famosos'),
        backgroundColor: const Color.fromARGB(255, 6, 186, 231),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // altura do cabeçalho
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/edificios_sp.jpg'), // imagem do fundo da tela
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBuildingContainer(
                    imageUrl: 'assets/copan_sp.jpg',
                    name: 'Edificio COPAN',
                    description: 'Endereço: Av Ipiranga, 200',
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/italia_sp.jpg',
                    name: 'Edificio Italia',
                    description: 'Endereço: Av Ipiranga, 344',
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/teatro_sp.jpg',
                    name: 'Teatro municipal de São Paulo',
                    description: 'Endereço: Praça Ramos de Azevedo, s/n - República, São Paulo - SP, 01037-010',
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/sesc_sp.jpg',
                    name: 'Sesc Pompéia',
                    description: 'Endereço: R. Clélia, 93 - Água Branca, São Paulo - SP, 05042-000',
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuildingContainer({
    required String imageUrl,
    required String name,
    required String description,
  }) {
    return Container(
      width: double.infinity, // serve para o container pegar a largura total da tela
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 200, // define altura da imagem
            width: double.infinity, // tambem pega a largura total, so que é a imagem
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}