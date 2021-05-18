
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
  : super(
    preferredSize: Size.fromHeight(80),
    child: Container(
      height: 250,
      decoration: BoxDecoration(color: Color.fromRGBO(126, 94, 169, 1),
      ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(TextSpan(
              text: "Calculadora IMC",
              style: TextStyle(fontSize: 25, color: Color.fromRGBO(255, 255, 255, 1)
              ),
              ),

            ),
            SizedBox(
                  height: 80,
                ),
          ],
        ), 
          ],
        )

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
            
        //     Text.rich(TextSpan(
        //       text: '24.5',
        //       //widget do cálculo do imc
        //       style: TextStyle(
        //         fontSize: 100, color: Color.fromRGBO(255, 255, 255, 1), 
        //         fontWeight: FontWeight.bold,
        //       ),
        //       ),

        //     ),
        //     SizedBox(
        //           height: 10,
        //         ),
        //   ],
        // ),
        
         
    ),
    
  ),
  
    
    
  );
}