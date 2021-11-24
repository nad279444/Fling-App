import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //List of names

  MyApp({Key? key}) : super(key: key);
  final List<String> names = ['kofi', 'Ama', 'John', 'Edwin', 'Kelvin'];

  final List<String> images = [
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/her-beauty-makes-it-hard-not-to-stare-picture-id1297633362?b=1&k=20&m=1297633362&s=170667a&w=0&h=oLk7uJYmrECp5Vo6O6Y3_kCIW0sZTy8IOpJ-n3lY4-g=',
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1546456073-92b9f0a8d413?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text('Fling'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                images[index],
              ),
            ),
            title: const Text('what is your name?'),
            subtitle: Text(names[index]),
            trailing: const Icon(
              Icons.check_box_rounded,
              color: Colors.purple,
            ),
          ),
          itemCount: names.length,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
