import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            )),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Login In',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                TextField(
                  controller: null,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                    hintText: 'Email',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Roboto'),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: null,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: Colors.white, fontFamily: 'Roboto'),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  primary: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New On Kitchen?',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 2),
                Text(
                  'Register Now',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontFamily: 'Roboto-Regular',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
