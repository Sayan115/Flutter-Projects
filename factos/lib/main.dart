// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'factspage.dart';

void main() {
  runApp(
    Factos(),
  );
}

class Factos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factos',
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SnackBar snackBar = SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      'Login Failed! Try Again.',
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff182C4A),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images/mscLogo.jpg'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 80,
                  ),
                  child: Card(
                    elevation: 60,
                    child: ListTile(
                      leading: Icon(
                        Icons.domain,
                      ),
                      trailing: Text(
                        'MSC KIIT',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Lobster',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextField(
                    controller: usernameController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your Username',
                        hintStyle: TextStyle(color: Colors.white70)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        )),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (usernameController.text == "sayan_77" &&
                        passwordController.text == "12345") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FactsPage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    child: Text(
                      'Sign In!',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
