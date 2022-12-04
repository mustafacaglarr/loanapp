import 'package:flutter/material.dart';
import 'package:loanapp/util/card.dart';
import 'package:loanapp/util/dialog_box.dart';
import 'package:loanapp/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();


  List LoanList = [
    ["Make a Tutorial" ,100],
    
  ];

void saveNewTask(){
  setState(() {
    LoanList.add([_controller1.text]);
  });
  Navigator.of(context).pop();
}

  void createNewTask(){
      showDialog(context: context, builder: (context) {
        return DialogBox(
          conttoller1: _controller1,
          conttoller2: _controller2,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        ); 
      },);
  }

     
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      floatingActionButton: FloatingActionButton(onPressed:createNewTask,
      child:  Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      ),


      body: Column( 
        
        children: [
          TopNeuCard(
            balance: '10000',
            income: '110',
            expense: '300',

          ),
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: ListView.builder(
                itemCount: LoanList.length,
                itemBuilder: (context, index) {
                  return ToDoTile(
                    TaskName: LoanList[index][0],
                    money: LoanList[index][1],
                    );
                },
                
                 
                

              ),

            )
            
            ),
          


        ],
      ),



    );
  }
}