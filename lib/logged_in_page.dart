import 'package:flutter/material.dart';
import 'package:flutter_google_oauth/api/google_sign_in.dart';
import 'package:flutter_google_oauth/main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoggedInPage extends StatelessWidget {
  final GoogleSignInAccount user;

  LoggedInPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged in!'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () async {
              await GoogleSignInApi.logout();

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>
                      MyHomePage(title: 'Flutter Google OAuth'),
                ),
              );
            },
            child: Text(
              'logout',
              style:
                  TextStyle(backgroundColor: Colors.white, color: Colors.black),
            ),
            // style: ButtonStyle(),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 32,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoUrl == null
                  ? 'https://i.stack.imgur.com/34AD2.jpg'
                  : user.photoUrl!),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Name: ' + user.displayName!,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Email: ' + user.email,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
