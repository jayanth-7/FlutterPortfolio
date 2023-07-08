import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key?key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  final _controller = PageController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const[
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}

class MyPost1 extends StatelessWidget{
  const MyPost1({Key?key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}

class MyPost2 extends StatelessWidget{
  const MyPost2({Key?key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}

class MyPost3 extends StatelessWidget{
  const MyPost3({Key?key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
