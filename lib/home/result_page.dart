import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:imc_app/model/result_model.dart';
import 'widgets/app_bar/app_bar_widget.dart';
import 'package:imc_app/core/result_faixa.dart';

class ResultPage extends StatelessWidget {
  final double imc;

  const ResultPage({
    Key? key,
    required this.imc,
  }) :super(key : key);

  @override
  Widget build(BuildContext context) {
    
    // ResulModel result = ResultPage().getResult(imc, type);

    return Scaffold(
          appBar: AppBar(
            title:
            Text('Resultado'),
            leading: BackButton(),
            backgroundColor: Color.fromRGBO(126, 94, 169, 1),
            centerTitle: true,
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              
                  SizedBox(
                    height: 80,
                  ),

                  Container(
                    height: 150,
                    width:150 ,
                    
                    child:

                    Center(
                      child: Column(
                        children: [
                          Text(
                            '${imc.roundToDouble()}',
                            style: TextStyle(fontSize: 60, color: Colors.black,
                            )
                            ),
                            Text('${ResultFaixa(imc:imc).function().faixa
                          }'
                          )
                        ],
                      )
                      
                      ),
                  ),
                  
                
                ],
              ),
            ),
          
         
        ), 
        
    
      );
      
    
  }
}