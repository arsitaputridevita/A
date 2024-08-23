// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'user_controller.dart';

// class UserView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final userController = Provider.of<UserController>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User View'),
//         actions: [
//           if (userController.isLoggedIn)
//             IconButton(
//               icon: Icon(Icons.logout),
//               onPressed: () {
//                 userController.logout();
//               },
//             ),
//         ],
//       ),
//       body: Center(
//         child: userController.isLoggedIn
//             ? ProfileView()
//             : LoginView(),
//       ),
//     );
//   }
// }

// class LoginView extends StatelessWidget {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final userController = Provider.of<UserController>(context);

//     void _login() {
//       final username = _usernameController.text;
//       final password = _passwordController.text;

//       userController.login(username, password);

//       if (!userController.isLoggedIn) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Login failed')),
//         );
//       }
//     }

//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           TextField(
//             controller: _usernameController,
//             decoration: InputDecoration(labelText: 'Username'),
//           ),
//           TextField(
//             controller: _passwordController,
//             decoration: InputDecoration(labelText: 'Password'),
//             obscureText: true,
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: _login,
//             child: Text('Login'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProfileView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final userController = Provider.of<UserController>(context);

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           'Welcome, ${userController.username}!',
//           style: TextStyle(fontSize: 24),
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             userController.logout();
//           },
//           child: Text('Logout'),
//         ),
//       ],
//     );
//   }
// }
