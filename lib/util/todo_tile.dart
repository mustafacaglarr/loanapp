import 'dart:ffi';

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {

  final String TaskName;
  final int money;
  const ToDoTile({super.key,required this.TaskName, required this.money});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           
            Text(TaskName),
            
            Text(money.toString()),
        ],),

decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(17)),
        
        
        
      ),
    );
  }
}
