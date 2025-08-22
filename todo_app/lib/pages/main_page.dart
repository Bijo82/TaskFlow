import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/util/dialogbox.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //reference the hive box
  final _mybox = Hive.box('mybox');
  tododatabase db = tododatabase();

  @override
  void initState() {
    // if this is the 1st time ever opening the app then display the default data
    if(_mybox.get("TODOLIST")==null){
      db.createInitialData();
    }else{
      //they already exists data
      db.loaddata();
    }
    super.initState();
  }


  //textcontroller this will help to save or cancel text in textfield
  final _controller = TextEditingController();

  //checkbox change function
  void checkBoxChanged(bool? value, int index){
    setState(() {
      db.todolist[index][1] = !db.todolist[index][1];
    });
    db.updateDataBase();
  }

  //addtask 
  void addnewtask(){
    setState(() {
      db.todolist.add([_controller.text,false]);
      _controller.clear();
    });

    Navigator.of(context).pop();
    db.updateDataBase();
  }

  //newtask
  void createnewtask(){
    showDialog(
      context: context, 
      builder: (context){
        return Dialogbox(
          controller: _controller,
          onSave: addnewtask,
          onCancel: () => Navigator.of(context).pop(),

        );
      }    
    );
  }

  //delete task
  void deletetask(int index){
    setState(() {
      db.todolist.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,

        //appbar
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "TaskFlow",
            style: TextStyle(
              color: Colors.yellow[400],
              fontSize: 30,
            ),
            ),
            centerTitle: true,
        ),

        //add button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            createnewtask();
          },
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
          child: Icon(Icons.add),
        ),

        //tasks   
        body: ListView.builder(
          itemCount: db.todolist.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: db.todolist[index][0], 
              taskCompleted: db.todolist[index][1], 
              onChanged: (value) => checkBoxChanged(value, index),
              deletefunction: (context) => deletetask(index),
            );
          },

        )
      ),
    );
  }
}