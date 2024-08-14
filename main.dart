import 'package:flutter/material.dart';

void main() {

  runApp(const GreetingApp());

}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppActivity());
  }
}

class AppActivity extends StatelessWidget{
  const AppActivity({super.key});

    MySnakeBar(message, context) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    }


  @override
  Widget build(BuildContext context) {

      ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      );

    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                 child: Text("Hello, World!",
                  style: TextStyle(
                    fontSize: 24,
                      fontWeight: FontWeight.bold,
                        color: Colors.red,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                    child: Text("Welcome to Flutter!",
                      style: TextStyle(
                        fontSize: 18,
                  ),
                ),
              ),
              Image.network("https://logowik.com/content/uploads/images/flutter5786.jpg",
                height: 175,
                  width: 300,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {MySnakeBar("Button Pressed!", context);},
                      child: Text("Press Me"),
                        style: buttonStyle,),
              )
            ],
          ),
      ),
    );
  }
}
