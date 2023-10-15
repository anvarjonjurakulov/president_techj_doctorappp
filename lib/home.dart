// ignore_for_file: unused_import

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/pages/gla/glaznoy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        elevation: 0,
        title: const Text("Докторы",style: TextStyle(fontSize: 35,height: 37/35,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,),
                  child: const Text(
                    "Глазной врач",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemList()));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  child: const Text(
                    "Кожанный врач",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemList()));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  child: const Text(
                    "Ортопед врач",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemList()));
                  },
                ),
               const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  child: const Text(
                    "Педиатор врач",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemList()));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  child: const Text(
                    "Терапевт врач",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemList()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
