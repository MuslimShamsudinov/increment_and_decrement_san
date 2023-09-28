import 'package:flutter/material.dart';
import 'package:increment_and_decrement_san/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int san = 0;
  void incrementlike(){
    setState(() {
      san++;
    });
}
  void decrementlike(){
    setState(() {
      san--;
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
              InkWell( onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage(san:san),));
              },
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('San:$san',style:TextStyle(fontSize: 20,color: Colors.white)))),
              ),
              SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              Container(
                decoration: BoxDecoration(
                  color:  Colors.red,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: IconButton(onPressed: (){
                  decrementlike();
                }, icon: Icon(Icons.remove)),
              ),
              SizedBox(width: 25,),
              Container(
                    decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: IconButton(onPressed: (){
                  incrementlike();
                }, icon: Icon(Icons.add)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}