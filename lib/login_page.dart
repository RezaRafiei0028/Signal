import 'package:flutter/material.dart';
import 'second_page.dart';
import 'forgot_pass.dart';

class LoginPage extends StatelessWidget {
  void PushPage(BuildContext context, page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ورود به حساب',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Icon(
                      Icons.login_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('assets/images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(150, 50),
                    side: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    textStyle:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    PushPage(context, SecondPage());
                  },
                  child: Text('ورود به حساب'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      fixedSize: Size(150.0, 50.0)),
                  onPressed: () {},
                  child: Text('ثبت نام'),
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () {
                    PushPage(context, ForgotPass());
                  },
                  child: Text('فراموشی رمز عبور'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
