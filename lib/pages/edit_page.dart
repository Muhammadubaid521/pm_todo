// // import 'package:flutter/material.dart';

// // class EditPage extends StatelessWidget {
// //   const EditPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('edit page'),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// import '../modols/todo.dart';
// import '../utils/collectin.dart';

// class EditPage extends StatelessWidget {
//   EditPage({super.key, required this.initData, required this.todo});
//   final Function initData;
//   Todo todo;
//   final msgControl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Page'),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             controller: msgControl..text = todo.message,
//           ),
//           FilledButton(
//             onPressed: () {
//               editTodo(context);
//             },
//             child: const Text('Edit'),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> editTodo(BuildContext context) async {
//     await Collection.posts.doc(todo.id).set({
//       'id': todo.id,
//       'msg': msgControl.text,
//     });
//     msgControl.clear();
//     // ignore: use_build_context_synchronously
//     ScaffoldMessenger.of(context)
//         .showSnackBar(const SnackBar(content: Text('Record Updated')));
//     initData();
//   }
// }
import 'package:flutter/material.dart';

import '../modols/todo.dart';
import '../utils/collectin.dart';

class EditPage extends StatelessWidget {
  EditPage({super.key, required this.initData, required this.todo});
  final Function initData;
  Todo todo;
  final msgControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Page'),
      ),
      body: Column(
        children: [
          TextField(
            controller: msgControl..text = todo.message,
          ),
          FilledButton(
            onPressed: () {
              editTodo(context);
            },
            child: const Text('Edit'),
          ),
        ],
      ),
    );
  }

  Future<void> editTodo(BuildContext context) async {
    await Collection.posts.doc(todo.id).set({
      'id': todo.id,
      'msg': msgControl.text,
    });
    msgControl.clear();
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Record Updated')));
    initData();
  }
}
