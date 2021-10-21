import 'package:chatapp/login.dart';
import 'package:chatapp/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('assets/logo.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Welcome To Nazia Kitchen',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.red),
                  ),
                  Column(
                    children: [
                      Text(
                        'Order food form our resturant and',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Text(
                        'Make reservation in real - time',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto-Medium',
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        primary: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto')),
                  ),
                  ElevatedButton(
                    child: const Text('SignUp'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        primary: Colors.white,
                        onPrimary: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto')),
                  ),
                  Text(
                    'Maked By Moiz Shiekh :)',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
