import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButton(),
  ));
}



class MyButton extends StatefulWidget{
  @override 
  MyButtonState createState(){
    return MyButtonState();
  }

} 

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List<String> spanishNumbers = [
    "Uno",
    "Dos",
    "Tres",
    "Cuatro",
    "Cinco",
    "Seis",
    "Seite",
    "Ocho",
    "Nueve",
    "Dietz"
  ];
  String defaultText = "Spanish Numbers";
  void displaySNumbers(){
    setState(() {
      defaultText = spanishNumbers[counter];
      if(counter<9){
        counter=counter+1;
      }
      else{
        counter=0;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("My Stateful App",),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(defaultText,style:TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text('Spanish Numbers',style: TextStyle(
                  color: Colors.white
                ),),
                onPressed: displaySNumbers,
                color: Colors.orange,
              )
            ],)
        ),
      ),
    );
  }

}