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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background Image"),
      ),
      body: Container(
          height:double.infinity,
          width: double.infinity,

          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/237/200/300"), //you can use asset image also
                fit: BoxFit.cover,

            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hi,\n This is background image",style: TextStyle(
                  fontSize: 29,color: Colors.white
                ),)
              ],
            ),
          )// Foreground widget here
      )
    );
  }
}
