import 'package:flutter/material.dart';
import 'package:flutter_project/datas.dart';
import 'package:flutter_project/details.dart';

class ListBuilder extends StatelessWidget {
  const ListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Datas data=Datas();
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: ListView.builder(
          itemCount: data.items.length,
          itemBuilder: (context, index) {
            return  ListTile(
              leading: CircleAvatar(),
              title: Text(
                data.items[index]["name"],
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all, color: Colors.green),
                  SizedBox(width: 5),
                  Text(data.items[index]["message"]),
                ],
              ),            
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(name: data.items[index]["name"]),));
              
            },);
          },
        ),
      ),
    );
  }
}
