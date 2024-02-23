import 'package:flutter/material.dart';
import 'package:flutter_project/listbuildersample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.green[50],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(202, 9, 155, 138),
        title: const Text("WhatsApp", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.green,
              height: 60,
              child: const Row(
                children: [
                  CircleAvatar(radius: 25),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Swathi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("hii...")
                    ],
                  ),
                  Spacer(),
                  Text("2:00")
                ],
              ),
            ),
            const ListTile(
              leading: CircleAvatar(),
              title: Text("Asmabi"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all, color: Colors.lightBlue),
                  SizedBox(width: 5),
                  Text("heloooo"),
                ],
              ),
              trailing: Text("4:00"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => ListBuilder(),));
      },),
    );
  }
}
