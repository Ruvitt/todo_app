import 'package:flutter/material.dart';

class Tarefa extends StatelessWidget {
  final String tituloTarefa;

  const Tarefa(this.tituloTarefa, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.blue,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tituloTarefa,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const MyCheckbox()
        ],
      ),
    );
  }
}

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.white;
    }

    return Transform.scale(
      scale: 1.2,
      child: Checkbox(
        fillColor: MaterialStateProperty.resolveWith(getColor),
        checkColor: Colors.green,
        value: isChecked,
        onChanged: (bool? value) {
          setState(
            () {
              isChecked = value!;
            },
          );
        },
      ),
    );
  }
}
