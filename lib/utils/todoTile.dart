import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;

    ToDoTile({super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged,

  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Checkbox(
                  activeColor: Colors.purpleAccent,
                  value: taskComplete, onChanged: onChanged),
              SizedBox(width: 10,),
              //Task Name
              Text(taskName),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple,
        ),
      ),
    );

  }
}
