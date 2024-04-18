import 'package:flutter/material.dart';
import 'biology.dart';
import 'physics.dart';
import 'chemistry.dart';
import 'quizzes.dart'; // Import the QuizzesPage

class EnglishHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study App - English', textAlign: TextAlign.center),
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
              hint: Text('Subjects'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biology':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BiologyPage(),
                        ),
                      );
                      break;
                    case 'Physics':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhysicsPage(),
                        ),
                      );
                      break;
                    case 'Chemistry':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChemistryPage(), // Navigate to ChemistryPage
                        ),
                      );
                      break;
                    case 'Quizzes': // Navigate to QuizzesPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizzesPage(),
                        ),
                      );
                      break;
                  }
                }
              },
              items: <String>['Biology', 'Physics', 'Chemistry', 'Quizzes'] // Add 'Quizzes' as an option
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

class SubjectScreen extends StatelessWidget {
  final String subject;

  SubjectScreen({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
      ),
      body: Center(
        child: Text(
          'Welcome to the $subject subject screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'biology.dart';
// import 'physics.dart';
// import 'chemistry.dart';
// import 'quizzes.dart'; // Import the QuizzesPage
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Study App', textAlign: TextAlign.center),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 127, 45, 214),
//       ),
//       backgroundColor: Color.fromARGB(255, 14, 200, 237),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DropdownButton<String>(
//               hint: Text('Subjects'),
//               onChanged: (String? value) {
//                 if (value != null) {
//                   switch (value) {
//                     case 'Biology':
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => BiologyPage(),
//                         ),
//                       );
//                       break;
//                     case 'Physics':
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => PhysicsPage(),
//                         ),
//                       );
//                       break;
//                     case 'Chemistry':
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ChemistryPage(), // Navigate to ChemistryPage
//                         ),
//                       );
//                       break;
//                     case 'Quizzes': // Navigate to QuizzesPage
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => QuizzesPage(),
//                         ),
//                       );
//                       break;
//                   }
//                 }
//               },
//               items: <String>['Biology', 'Physics', 'Chemistry', 'Quizzes'] // Add 'Quizzes' as an option
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Choose Language:',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Set app locale to English
//                     // You can replace this logic with your preferred localization implementation
//                     Locale newLocale = const Locale('en');
//                     // Push the homepage again to rebuild with the new locale
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => HomePage()),
//                     );
//                   },
//                   child: Text('English'),
//                 ),
//                 SizedBox(width: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Set app locale to Spanish
//                     // You can replace this logic with your preferred localization implementation
//                     Locale newLocale = const Locale('es');
//                     // Push the homepage again to rebuild with the new locale
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => HomePage()),
//                     );
//                   },
//                   child: Text('Spanish'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
