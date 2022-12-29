import 'package:blog_app/blog_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petbook Blog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,

      // appBar: AppBar(
      //   title: const Text('Blog'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 250.0),
            //const SizedBox(height: 350.0),
            const Text(
              'Petblog',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 48,
                  fontWeight: FontWeight.bold),
            ),

            // const Text(
            //   'Blog',
            //   style: TextStyle(
            //       color: Color.fromARGB(255, 255, 255, 255),
            //       fontSize: 48,
            //       fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 29.0),
            // //Image.network('https://w7.pngwing.com/pngs/992/606/png-transparent-wildcat-dog-paw-finger-print-animals-sticker-black-thumbnail.png');

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.orange,
                  minimumSize: const Size(300, 40)),
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BlogPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.orange,
                  minimumSize: const Size(300, 40)),
              child: const Text('Signup'),
            ),
            const SizedBox(height: 19.0),
            Image.asset('images/5th.png'),
          ],
        ),
      ),
    );
  }
}
