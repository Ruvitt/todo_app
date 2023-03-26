import 'package:flutter/material.dart';

class Tarefa extends StatelessWidget {
  final String tituloTarefa;

  const Tarefa(this.tituloTarefa, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.blue,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      width: double.infinity,
      child: Row(children: [
        Text(
          tituloTarefa,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        // checkbox
      ]),
    );
  }
}
