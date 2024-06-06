import 'package:flutter/material.dart';
import '../utils/todoTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List Of toDo tasks
  List toDoList =[
    ['MakeTutorial',false],
    ['Working On Project',false],
    ['Start Coding',false],
    ['Working On Project',false],
    ['Working On Project',false],
    ['Working On Project',false],


  ];

//check box was tapped
  void checkBoxChanged(bool? value,int index){
setState(() {
  toDoList[index][1] = !toDoList[index][1];
});

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: (){},
      ),
appBar: AppBar(
backgroundColor: Colors.purple,
  centerTitle: true,
  title: Text("To Do",style: TextStyle(color: Colors.white),),
),
      backgroundColor: Colors.purpleAccent,
      body: ListView.builder(
        itemBuilder: (context,index){
          return ToDoTile(taskName: toDoList[index][0],
              taskComplete: toDoList[index][1],
              onChanged: (value)=> checkBoxChanged(value, index)
          );
        },
      itemCount: toDoList.length,
      )
    );
  }
}
