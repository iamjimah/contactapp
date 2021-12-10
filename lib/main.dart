// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/female.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://picsum.photos/200/300?random=${index + 5}"),
                    ),
                    title: Text(
                      "Techries Ghana",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text("+233 505 419 44"),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfContacts = [
  {
    'name': 'amos',
    "location": 'kumasi, Ghana',
    'email': 'email@mail.com',
    'phone': '+23356842651',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'lexis',
    "location": 'Wa, Ghana',
    'email': 'email@mail.com',
    'phone': '+23326842656',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'fred de kid',
    "location": 'Kpaguri, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842653',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'andy',
    "location": 'bergen, Norway',
    'email': 'email@mail.com',
    'phone': '+233247842652',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'miller',
    "location": 'Malmo, Sweden',
    'email': 'email@mail.com',
    'phone': '+23320842659',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'labaadi',
    "location": 'kambali, Wa',
    'email': 'email@mail.com',
    'phone': '+23354842651',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'blinkz',
    "location": 'dondoli, Wa',
    'email': 'email@mail.com',
    'phone': '+23328842658',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'techries',
    "location": 'kpaguri, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842657',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'patty',
    "location": 'dondoli, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842655',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'alli',
    "location": 'danko, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842654',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
  {
    'name': 'ghideon',
    "location": 'airstrip, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842656',
    'group': "Friends",
    'image': "https://picsum.photos/200/300?random=2"
  },
];
