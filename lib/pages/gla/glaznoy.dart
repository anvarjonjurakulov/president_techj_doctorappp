// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/pages/gla/item_details.dart';


class ItemList extends StatelessWidget {
  ItemList({Key? key}) : super(key: key) {
    _stream = _reference.snapshots();
  }

  CollectionReference _reference =
  FirebaseFirestore.instance.collection('glaza');

  
  late Stream<QuerySnapshot> _stream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text('Пациенты'),
        backgroundColor: Colors.blue.shade50,
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
         
          if (snapshot.hasError) {
            return Center(child: Text('error ${snapshot.error}'));
          }

         
          if (snapshot.hasData) {
           
            QuerySnapshot querySnapshot = snapshot.data;
            List<QueryDocumentSnapshot> documents = querySnapshot.docs;

            
            List<Map> items = documents.map((e) => e.data() as Map).toList();

            
            return ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  
                  Map thisItem = items[index];
                 
                  return ListTile(
                    title: Text('${thisItem['problem']}'),
                    subtitle: Text('${thisItem['number']}'),
                    leading: Container(
                      height: 80,
                      width: 80,
                      child: 
                         Image.network(
                            '${thisItem['url_image']}'),
                      
                      
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ItemDetails('${thisItem['url_image']}',
                              '${thisItem['problem']}',
                              '${thisItem['number']}'

                          )));

                    },
                  );
                });
          }

          
          return const Center(child: const CircularProgressIndicator());
        },
      ), 
      
    );
  }
}