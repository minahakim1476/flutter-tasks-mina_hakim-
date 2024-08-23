import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:const  Icon(Icons.menu),
            onPressed: () {
              print("the menu button is pressed");
            },
            color: Colors.white,
          ),
          title: const Text(
            'First App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          shadowColor: Colors.green,
          elevation: 20.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://mostaql.hsoubcdn.com/uploads/portfolios/1791881/637a90553305a/TROSCBanner.jpg',
                height: 300,
                width: 300,
              ),
              const Text(
                "Hello, World!",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name", 
                  labelStyle:
                      TextStyle(fontSize: 18), 
                  floatingLabelBehavior: FloatingLabelBehavior
                      .auto,
                  border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                ),
              ),
              const SizedBox(
                  height:20,
                  width: 100,
                  ), 
              const TextField(
                decoration: InputDecoration(
                  labelText: "Enter your age", 
                  labelStyle:
                      TextStyle(fontSize: 18), 
                  floatingLabelBehavior: FloatingLabelBehavior
                      .auto, 
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("the increment button is pressed");
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
