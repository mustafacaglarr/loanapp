import 'package:flutter/material.dart';
import 'package:loanapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
    final conttoller1;
    final conttoller2;
    VoidCallback onSave;
    VoidCallback onCancel;


   DialogBox({super.key, required this.conttoller1,required this.conttoller2,required this.onSave,required this.onCancel});

  @override
  Widget build(BuildContext context) {
    

    
    return AlertDialog(
       
      backgroundColor: Color.fromARGB(255, 240, 240, 238),
      content: Container(
        height: 200,  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
          
          

          TextField(
            controller: conttoller1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "konu gir"
            ),
            
          ),
          TextField(
            //controller: conttoller2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "miktar gir"
              
            ),
            
          ),
          
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          MyButton(onPressed:onSave, text: "SAVE"),

          const SizedBox(width: 10,),

          MyButton(onPressed:onCancel, text: "CANCEL")
        ],)        


        ],),
        
        ),


    );
  }
}