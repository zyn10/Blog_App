import 'package:blog_app/blog_des.dart';
import 'package:blog_app/main.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgroundColor == Colors.white) {
                    backgroundColor = Colors.orange;
                  } else {
                    backgroundColor = Colors.white;
                  }
                });
              },
              icon: const Icon(Icons.circle,))
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: ListTile(
                  title: Text(
                    'Checking Drawer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          //   child: Wrap(spacing: 10, children: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.orange,
          //         foregroundColor: Colors.white,
          //         //shape: const StadiumBorder(),
          //       ),
          //       child: const Text('Food'),
          //     ),
          //     // ElevatedButton(
          //     //   onPressed: () {},
          //     //   style: ElevatedButton.styleFrom(
          //     //     backgroundColor: Colors.orange,
          //     //     foregroundColor: Colors.white,
          //     //     //shape: const StadiumBorder(),
          //     //   ),
          //     //   child: const Text('Boooooooooooooooom'),
          //     // ),
          //     // ElevatedButton(
          //     //   onPressed: () {},
          //     //   style: ElevatedButton.styleFrom(
          //     //     backgroundColor: Colors.orange,
          //     //     foregroundColor: Colors.white,
          //     //     //shape: const StadiumBorder(),
          //     //   ),
          //     //   child: const Text('Boooooooooooooooom'),
          //     // ),
          //   ]),
          // ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const BlogDescription(
                      title: 'The Bond with Pets',
                      imagePath: 'images/three.jpg',
                    );
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ]),
              child: Column(
                children: [
                  Image.asset('images/three.jpg'),
                  const ListTile(
                    title: Text('The Bond with Pets'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const BlogDescription(
                      title: 'Dog Food & Accessories',
                      imagePath: 'images/two.png',
                    );
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ]),
              child: Column(
                children: [
                  Image.asset('images/two.png'),
                  const ListTile(
                    title: Text('Dog Food & Accessories'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const BlogDescription(
                      title: 'Puppies Living Habitat',
                      imagePath: 'images/one.jpg',
                    );
                  },
                ),
              );
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ]),
              child: Column(
                children: [
                  Image.asset('images/one.jpg'),
                  const ListTile(
                    title: Text('Puppies Living Habitat'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
