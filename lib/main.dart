// // // import 'package:flutter/material.dart';
// // // import 'bio_quiz.dart';
// // // import 'chem_quiz.dart';
// // // import 'homepage.dart';
// // // import 'phys.quiz.dart';
// // //
// // // void main() {
// // //   runApp(MyApp());
// // // }
// // //
// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       title: 'Study App',
// // //       theme: ThemeData(
// // //         primaryColor: Colors.blue,
// // //       ),
// // //       initialRoute: '/',
// // //       routes: {
// // //         '/': (context) => HomePage(),
// // //         '/bio_quiz': (context) => BiologyQuizPage(),
// // //         '/phys_quiz': (context) => PhysicsQuizPage(),
// // //         '/chem_quiz': (context) => ChemistryQuizPage(),
// // //       },
// // //     );
// // //   }
// // // // }
// //
// // import 'package:flutter/material.dart';
// // import 'bio_quiz.dart';
// // import 'chem_quiz.dart';
// // import 'phys.quiz.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Study App',
// //       theme: ThemeData(
// //         primaryColor: Colors.blue,
// //       ),
// //       initialRoute: '/',
// //       routes: {
// //         '/': (context) => HomePage(),
// //         '/english_home': (context) => EnglishHomePage(), // Define the English home route
// //         '/spanish_home': (context) => SpanishHomePage(), // Define the Spanish home route
// //         '/bio_quiz': (context) => BiologyQuizPage(),
// //         '/phys_quiz': (context) => PhysicsQuizPage(),
// //         '/chem_quiz': (context) => ChemistryQuizPage(),
// //       },
// //     );
// //   }
// // }
// //
// // class HomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Study App'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               'Please select your preferred language:',
// //               style: TextStyle(fontSize: 18.0),
// //             ),
// //             SizedBox(height: 20.0),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Navigate to English version of the app
// //                 Navigator.pushNamed(context, '/english_home');
// //               },
// //               child: Text('English'),
// //             ),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Navigate to Spanish version of the app
// //                 Navigator.pushNamed(context, '/spanish_home');
// //               },
// //               child: Text('Spanish'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class EnglishHomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Study App - English'),
// //       ),
// //       body: Center(
// //         child: Text(
// //           'Welcome to the English version of the app!',
// //           style: TextStyle(fontSize: 20.0),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class SpanishHomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Study App - Spanish'),
// //       ),
// //       body: Center(
// //         child: Text(
// //           '¡Bienvenido a la versión en español de la aplicación!',
// //           style: TextStyle(fontSize: 20.0),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// //
// //
//
//
//
// import 'package:flutter/material.dart';
// import 'english_homepage.dart'; // Import the EnglishHomePage
// import 'bio_quiz.dart';
// import 'chem_quiz.dart';
// import 'phys.quiz.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Study App',
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => HomePage(),
//         '/english_home': (context) => EnglishHomePage(), // Define the English home route
//         '/bio_quiz': (context) => BiologyQuizPage(),
//         '/phys_quiz': (context) => PhysicsQuizPage(),
//         '/chem_quiz': (context) => ChemistryQuizPage(),
//       },
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Study App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Please select your preferred language:',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to English version of the app
//                 Navigator.pushNamed(context, '/english_home');
//               },
//               child: Text('English'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to Spanish version of the app
//                 Navigator.pushNamed(context, '/spanish_home');
//               },
//               child: Text('Spanish'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'english_homepage.dart'; // Import the EnglishHomePage
import 'spanish_homepage.dart'; // Import the SpanishHomePage
import 'bio_quiz.dart';
import 'chem_quiz.dart';
import 'phys.quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/english_home': (context) => EnglishHomePage(), // Define the English home route
        '/spanish_home': (context) => PaginaPrincipal(), // Define the Spanish home route
        '/bio_quiz': (context) => BiologyQuizPage(),
        '/phys_quiz': (context) => PhysicsQuizPage(),
        '/chem_quiz': (context) => ChemistryQuizPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please select your preferred language:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to English version of the app
                Navigator.pushNamed(context, '/english_home');
              },
              child: Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Spanish version of the app
                Navigator.pushNamed(context, '/spanish_home');
              },
              child: Text('Spanish'),
            ),
          ],
        ),
      ),
    );
  }
}
