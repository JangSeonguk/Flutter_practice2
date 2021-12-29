import 'package:flutter/material.dart';
import 'package:tabbar/animalItem.dart';

class FirstPage extends StatelessWidget {
  final List<Animal>? list;
  const FirstPage({Key? key,this.list}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: (Context,position){
        return Card(
          child: Row(
            children: [
              Image.asset(list![position].imagePath!, height: 100,width: 100,fit: BoxFit.contain,),

            ]
          ),
        );
    }, itemCount: list!.length,)
    );
  }
}
