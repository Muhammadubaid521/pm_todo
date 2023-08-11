// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:pm_todo/utils/collectin.dart';

// class SavePage extends StatelessWidget {
//   SavePage({super.key, required this.initData});
//   final Function initData;
//   final msgController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('save page'),
//         ),
//         body: Column(
//           children: [
//             TextField(
//               controller: msgController,
//             ),
//             FilledButton(
//               onPressed: () {
//                 saveTodo(context);
//               },
//               child: const Text('save'),
//             ),
//           ],
//         ));
//   }

//   void saveTodo(BuildContext context) {
//     String id = Timestamp.now().millisecondsSinceEpoch.toString();
//     Collection.posts.doc(id).set({
//       'id': id,
//       'msg': msgController.text,
//     });
//     msgController.clear();
//     ScaffoldMessenger.of(context)
//         .showSnackBar(const SnackBar(content: Text('Record saved')));

//     initData();
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../utils/collectin.dart';

class SavePage extends StatelessWidget {
  SavePage({super.key, required this.initData});
  final Function initData;
  final msgControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Page'),
      ),
      body: Column(
        children: [
          TextField(
            controller: msgControl,
          ),
          FilledButton(
            onPressed: () {
              saveTodo(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  Future<void> saveTodo(BuildContext context) async {
    String id = Timestamp.now().millisecondsSinceEpoch.toString();
    await Collection.posts.doc(id).set({
      'id': id,
      'msg': msgControl.text,
    });
    msgControl.clear();
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Record Saved')));
    initData();
  }
}
