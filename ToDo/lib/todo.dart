import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class todo extends StatelessWidget {
  final String taskName;
  final bool TaskCompleted;
  Function(bool?)? deleteFunction; //ye rehta ha
  Function(bool?)? onChanged;
   todo({super.key,required this.taskName,
   required this.TaskCompleted,
   required this.onChanged,
  required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25,right: 25,top:25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            // SlidableAction(
            //   icon: Icons.delete,
            // onPressed: deleteFunction(),
            //     backgroundColor: Colors.red,
            // )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
             Checkbox(value: TaskCompleted, onChanged:onChanged,
             activeColor: Colors.black),
              Text(taskName,style: TextStyle(
                fontSize: 20,
                decoration: TaskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
              ),),

            ],
          ),
          decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15),
        ),
        ),
      ),
    )
    ;
  }
}
