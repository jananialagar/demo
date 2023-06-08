import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Bizcard(),
    );
  }
}

class Bizcard extends StatelessWidget {
  const Bizcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biz Card'),
        centerTitle: false,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }
}

Container _getAvatar() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(color: Colors.redAccent, width: 1.2),
      image: DecorationImage(
        image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Container _getCard() {
  return Container(
    width: 350,
    height: 200,
    margin: EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      color: Colors.amberAccent,
      borderRadius: BorderRadius.circular(14.5),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Jaan",
          style: TextStyle(
            fontSize: 20.9,
            fontStyle: FontStyle.italic,
            color: Colors.indigo[900],
          ),
        ),
        Text("Jana@gmail.com"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person_3_outlined),
            Text("T: @buildappwithflutter"),
          ],
        ),
      ],
    ),
  );
}
