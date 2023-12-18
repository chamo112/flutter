import 'package:flutter/material.dart';

void main() {
  runApp(const MyToDoApp());
}

class MyToDoApp extends StatelessWidget {
  const MyToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(color: Colors.blue),
      ),
      home: const TodoListPage(),
    );
  }
}

// リスト一覧用Widget
class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'リスト一覧',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('タマネギを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ジャガイモを買う'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('カレールーを買う'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const TodoAddPage();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// リスト追加用画面
class TodoAddPage extends StatelessWidget {
  const TodoAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'リスト追加',
        style: TextStyle(color: Colors.white),
      )),
      body: Container(
          padding: const EdgeInsets.all(64),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
          )),
    );
  }
}