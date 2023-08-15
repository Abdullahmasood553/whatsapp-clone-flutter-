// import 'package:flutter/material.dart';

// class GroupPageScreen extends StatefulWidget {
//   final String name;
//   const GroupPageScreen({super.key, required this.name});

//   @override
//   State<GroupPageScreen> createState() => _GroupPageScreenState();
// }

// class _GroupPageScreenState extends State<GroupPageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Anonymous Group'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       hintText: "Enter Message...",
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(width: 2),
//                       ),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   color: Colors.indigo,
//                   onPressed: () {},
//                   icon: const Icon(Icons.send_outlined),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }






// import 'package:chat_app_socket/screens/group_page_screen.dart';
// import 'package:flutter/material.dart';

// class HomePageScreen extends StatefulWidget {
//   const HomePageScreen({super.key});

//   @override
//   State<HomePageScreen> createState() => _HomePageScreenState();
// }

// class _HomePageScreenState extends State<HomePageScreen> {
//   TextEditingController nameController = TextEditingController();

//   final formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Group Chat App'),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () => showDialog(
//               context: context,
//               builder: (BuildContext context) => AlertDialog(
//                     title: const Text("Please Enter your name"),
//                     content: Form(
//                       key: formKey,
//                       child: TextFormField(
//                         controller: nameController,
//                         validator: (value) {
//                           if (value == null || value.length < 3) {
//                             return "User must have proper name";
//                           }
//                         },
//                       ),
//                     ),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           nameController.clear();
//                           Navigator.pop(context);
//                         },
//                         child: const Text(
//                           "Cancel",
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.red,
//                           ),
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           if (formKey.currentState!.validate()) {
//                             String name = nameController.text;
//                             nameController.clear();
//                             Navigator.pop(context);
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => GroupPageScreen(
//                                   name: name,
//                                 ),
//                               ),
//                             );
//                           }
//                         },
//                         child: const Text(
//                           "Enter",
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.green,
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//           child: const Text(
//             'Start Group Chat',
//             style: TextStyle(
//               color: Colors.indigo,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
