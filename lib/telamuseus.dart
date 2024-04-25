import 'package:flutter/material.dart';

class TelaMuseu extends StatelessWidget {
  const TelaMuseu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Museus'),
        backgroundColor: const Color.fromARGB(255, 231, 179, 6),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // altura do cabeçalho
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/museus_sp.jpg'), // imagem do fundo da tela
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
                    imageUrl: 'assets/masp_sp.jpg',
                    name: 'Museu de Arte de São Paulo',
                    description: 'Endereço: Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200',
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/pinacoteca_sp.jpg',
                    name: 'Pinacoteca de São Paulo',
                    description: 'Endereço: Praça da Luz, 2 - Luz, São Paulo - SP, 01120-010',
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/ipiranga_sp.jpg',
                    name: 'Museu do Ipiranga',
                    description: 'Parque da Independência - Ipiranga, São Paulo - SP, 04263-000',
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/arte_moderna_sp.jpg',
                    name: 'Museu de Arte Moderna de São Paulo',
                    description: 'Av. Pedro Álvares Cabral, s/n° - Vila Mariana, São Paulo - SP, 04094-000',
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