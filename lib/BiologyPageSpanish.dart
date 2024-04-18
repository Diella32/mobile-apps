import 'package:flutter/material.dart';

class BiologyPageSpanish extends StatelessWidget {
  final List<Map<String, String>> quizData = [
    {
      'question': '¿Cuál es la central energética de la célula?',
      'answer': 'Mitochondria',
    },
    {
      'question': '¿Cuál es el proceso mediante el cual las plantas elaboran su propio alimento?',
      'answer': 'Fotosíntesis',
    },
    // Add more translated questions and answers here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biología'),
        backgroundColor: Color.fromARGB(255, 127, 45, 214),
      ),
      backgroundColor: Color.fromARGB(255, 14, 200, 237),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: quizData.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pregunta ${index + 1}: ${quizData[index]['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                Text(
                  'Respuesta: ${quizData[index]['answer']}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SpanishHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación de Estudio - Español', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 127, 45, 214),
      ),
      backgroundColor: Color.fromARGB(255, 14, 200, 237),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              hint: Text('Materias'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biología':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BiologyPageSpanish(),
                        ),
                      );
                      break;
                  // Add cases for other subjects
                  }
                }
              },
              items: <String>['Biología'] // Add other subjects here
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpanishHomePage(),
  ));
}
