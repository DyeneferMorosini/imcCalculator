
import 'package:flutter/material.dart';
import 'widgets/app_bar/app_bar_widget.dart';
import 'result_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
double weight = 0;
double height = 0;

String dropdownValue='one';

// var selectBar = SelectBar();

// SelectBar selectBar = selectBar.man();
// SelectBar selectBar = selectBar.woman();


double calculateImc(double weight, double height){
  var altura = height/100;
  var imc = weight/(altura*altura);
  return imc;
}

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: 
      Padding(
        padding: const EdgeInsets.all(150.150),
        child:Column(
              children:<Widget>[
                
                Text(
                  'Peso'
                ),
                SizedBox(
                  height: 10,
                ),
              TextField(
                onChanged: (value){
                  setState((){
                    weight = double.parse(value);
                    }
                  );
                }
              ),
              SizedBox(
                  height: 30,
                ),
              Text(
                  'Altura em CM'
                ),
                SizedBox(
                  height: 10,
                ),
              TextField(
                onChanged: (value){
                  setState((){
                    height = double.parse(value);
                    }
                  );
                }
              ),
              SizedBox(
                  height: 10,
                ),
            
                SizedBox(
                  height: 20,
                ),
            

            ElevatedButton(
              child: Text('CALCULAR'),
  
                  onPressed: (){
                    
                    if (height !=0 && weight !=0)
                        print('teste');
                        print(calculateImc(weight, height));

                        Navigator.push(
                        context,
                        
                        MaterialPageRoute(
                        builder: (context)=> ResultPage(imc: calculateImc(weight, height),)),


                          );
                          }, 
                        ),

          ]
          )
          ),             
             );  
   
}
}