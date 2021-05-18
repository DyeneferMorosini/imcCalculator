import 'package:flutter/material.dart';

class SelectBar extends StatefulWidget {

  bool manIsSelected =  false ;
  bool womanIsSelected =  false ;

  String  getSelected () {
    if (manIsSelected) {
      return  'homem' ;
    } else  if (womanIsSelected) {
      return  'mulher' ;
    }
    return  'null' ;
  }

  @override
  _SelectBarState createState() => _SelectBarState();
}



class _SelectBarState extends State<SelectBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
        GestureDetector(
          onTap: (){
            setState((){
              widget.manIsSelected = true;
              widget.womanIsSelected = false;

            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: widget.manIsSelected?Colors.green: Colors.black,
                width: 2,
              ),
            ),
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Mulher',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ),
        ),

        GestureDetector(
          onTap: (){
            setState((){
              widget.manIsSelected = true;
              widget.womanIsSelected = false;

            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: widget.manIsSelected?Colors.green: Colors.black,
                width: 2,
              ),
            ),
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Homem',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ),
        )
      ]
      
    );
  }
}