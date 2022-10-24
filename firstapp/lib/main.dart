import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
          title: (Text('Dream App')),
        ),
        body: Center(
            child: Image(
          image: NetworkImage(
              'https://www.mustang6g.com/forums/attachments/2019-saleen-mustang-s302-black-label-review-03-jpg.395115/'),
        )),
        backgroundColor: Colors.yellow[100],
      ),
    );
  }
}
