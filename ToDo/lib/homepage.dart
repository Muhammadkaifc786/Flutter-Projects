import 'package:flutter/material.dart';
import 'package:todo/Dialog_Box.dart';
import 'package:todo/todo.dart';

class homepage extends StatefulWidget {

  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _controller=TextEditingController();
  List ToDoList=[
    ["Exercise",false],
    ["Coding",false],
  ];
void checkBoxChanged(bool? value,int index) {
  setState(() {
    ToDoList[index][1] = !ToDoList[index][1];
  });
}
  void SaveNewTask(){
  setState(() {
    ToDoList.add([_controller.text,false]);
    _controller.clear();
  });
  Navigator.of(context).pop();
  }
  void deleteTask(int index){
setState(() {
  ToDoList.removeAt(index);
});
  }
void Clear(){
  setState(() {
    ToDoList.clear();
  });
}
void createTask(){
showDialog(
  context: context,
  builder: (context){
  return Dialog_Box(
    controller: _controller,
    onClose: () => Navigator.of(context).pop(),
    onSave: SaveNewTask,
  );
  },
);
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("TO DO"),
        elevation: 2,
        backgroundColor: Colors.yellow,
      ),
  floatingActionButton: Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [

      FloatingActionButton(
        onPressed: Clear,
        child: Icon(Icons.remove),
        backgroundColor: Colors.yellow,

      ),
      SizedBox(height: 16),
      FloatingActionButton(
        onPressed: createTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,

      ),
      ],
  ),
      body: ListView.builder(
       itemCount: ToDoList.length,
        itemBuilder: (context,index){
         return todo(
           taskName: ToDoList[index][0],
           TaskCompleted: ToDoList[index][1],
           onChanged: (value) => checkBoxChanged(value,index),
            deleteFunction: (context) => deleteTask(index),
         );
        },
      ),
    );
  }
}
