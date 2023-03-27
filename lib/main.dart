import 'package:flutter/material.dart';
import './tarefa.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu primeiro todoApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TodoApp'),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            Tarefa('tarefa 1'),
            Tarefa('tarefa 2'),
          ],
        ),
      ),
    );
  }
}
