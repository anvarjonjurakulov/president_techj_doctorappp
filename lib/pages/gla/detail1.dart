
// // ignore_for_file: must_be_immutable, prefer_final_fields, sized_box_for_whitespace

// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';


// class ItemDetails extends StatefulWidget {
//   ItemDetails(this.itemId, this.text1, this.text2, {Key? key}) : super(key: key) {




//   }

//   String itemId;
//   String text1;
//   String text2;

//   @override
//   State<ItemDetails> createState() => _ItemDetailsState();
// }

// class _ItemDetailsState extends State<ItemDetails> {
//   TextEditingController _controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.blue.shade50,
//         body:ListView(
//           children: [
//             TextFormField(
//                             controller: _controller,
//                             keyboardType: TextInputType.text,
//                             decoration: const InputDecoration(
//                               border: InputBorder.none,
//                                 hintText: 'answer'),
//                             validator: (String? value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter answer';
//                               }
          
//                               return null;
//                             },
//                           ),
//                 Container(
//                   height: 100,
//                   child: //Image.network(itemId),
//                   InteractiveViewer(child: Image.network(widget.itemId),
                  
//                   ),
          
//                 ),
//                 Text(widget.text1,
//                   style: const TextStyle(fontSize: 30,
//                       fontWeight: FontWeight.bold),),
//                 Text(widget.text2,style: const TextStyle(fontSize: 30,
//                     fontWeight: FontWeight.bold),),
                
//                 ElevatedButton(onPressed: (){
//                   FirebaseDatabase.instance.ref()
//                   .child("answer")
//                   .child("i")
//                   .set(_controller.text);
//                 }, child: const Text("send to user"))
//           ],
//         )

//         ),

//       );
    
//   }
// }