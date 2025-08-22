import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletefunction;


  TodoTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted,
    required this.onChanged,
    required this.deletefunction
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,top: 25,right: 25,bottom: 0),
      child: Row(
        children: [
          //checkbox
          Checkbox(
            value: taskCompleted, 
            onChanged: onChanged,
            activeColor: Colors.yellow[600],
            checkColor: Colors.black,
            ),

          

          //task name
          Expanded(
            child: Slidable(
              endActionPane: ActionPane(                       //from where you are starting to slide or drag
                motion: StretchMotion(), 
                children: [
                  SlidableAction(
                    onPressed: deletefunction,
                    icon: Icons.delete,
                    backgroundColor: const Color.fromARGB(255, 201, 63, 53),
                    borderRadius: BorderRadius.circular(8),
                    )
                ]
              ),               
              
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Text(
                    taskName,
                    style: TextStyle(
                      color: Colors.white70,
                      decoration: taskCompleted? TextDecoration.lineThrough:null,
                      decorationColor: Colors.white,
                
                      ),
                    
                    
                    ),
                ),
              ),
          ),


        ],


      ),
    );
  }
}