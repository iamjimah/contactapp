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
    List myContacts = listOfContacts;
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
          itemCount: myContacts.length,
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
                        MaterialPageRoute(builder: (context) => ContactPage(myContact: myContacts[index],)));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
<<<<<<< HEAD
                          "https://picsum.photos/200/300?random=${index + 5}"),
=======
                          "${myContacts[index]["image"]} ${index + 3}"),
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
                    ),
                    title: Text(
                      myContacts[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]['phone']),
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
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'lexis',
    "location": 'Wa, Ghana',
    'email': 'email@mail.com',
    'phone': '+23326842656',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'fred de kid',
    "location": 'Kpaguri, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842653',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'andy',
    "location": 'bergen, Norway',
    'email': 'email@mail.com',
    'phone': '+233247842652',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'miller',
    "location": 'Malmo, Sweden',
    'email': 'email@mail.com',
    'phone': '+23320842659',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'labaadi',
    "location": 'kambali, Wa',
    'email': 'email@mail.com',
    'phone': '+23354842651',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'blinkz',
    "location": 'dondoli, Wa',
    'email': 'email@mail.com',
    'phone': '+23328842658',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'techries',
    "location": 'kpaguri, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842657',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'patty',
    "location": 'dondoli, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842655',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'alli',
    "location": 'danko, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842654',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
  {
    'name': 'ghideon',
    "location": 'airstrip, Wa',
    'email': 'email@mail.com',
    'phone': '+23356842656',
    'group': "Friends",
<<<<<<< HEAD
    'image': "https://picsum.photos/200/300?random=2"
=======
    'image': "https://picsum.photos/200/300?random="
>>>>>>> d5327a95443ccdd78430b18c2a2b6c5e3b5b1ee0
  },
];
