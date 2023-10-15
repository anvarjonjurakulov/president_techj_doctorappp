// ignore_for_file: unused_import, must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  ItemDetails(this.itemId, this.text1, this.text2, {Key? key})
      : super(key: key) {}

  String itemId;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: //Image.network(itemId),
                    InteractiveViewer(
                  child: Image.network(itemId),
                ),
              ),
              Text(
                text1,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                text2,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  controller: _controller,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      hintText: 'answer'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter answer';
                    }

                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    FirebaseDatabase.instance
                        .ref()
                        .child("answer")
                        .set(_controller.text);
                  },
                  child: Text("send to user")),
            ],
          ),
        ),
      ),
    );
  }
}
