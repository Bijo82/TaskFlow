import 'package:flutter/material.dart';
import 'package:todo_app/util/button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Dialogbox({super.key,required this.controller,required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      backgroundColor: Colors.grey[900],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //user input
            TextField(
              //this'll help to cancel or reset and save the text entered by user in the textfield
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task ...",
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),               
                ),

                style: TextStyle(color: Colors.white),
              
            ),

            //button -> save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Padding(padding: EdgeInsets.only(top:70,)),
                //save button
                  Button(text: "Save", onPressed: () {
                    onSave();
                  }),
                //space between button
                  const SizedBox(width: 8),
                //cancel button
                  Button(text: "Cancel", onPressed: () {
                    onCancel();
                  })
              ],
            )
          ],
        ),
      ),
    );
  }
}