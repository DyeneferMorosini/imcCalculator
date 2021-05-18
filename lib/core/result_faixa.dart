import 'package:imc_app/model/model.dart';

class ResultFaixa{
  final double imc;

  const ResultFaixa({
    required this.imc,
  }
  );
  
ModelDados function(){
  if (imc <= 18.5){
    
    return ModelDados(
      imc : imc , 
      faixa : 'Abaixo do peso');
  } 
   else  if (imc >18.5 && imc <= 25){
    
    return ModelDados(
      imc : imc , 
      faixa : 'Normal');
  }  else  if (imc >= 25 && imc < 30){
    
    return ModelDados(
      imc : imc , 
      faixa : 'Sobrepeso');
  }else  if (imc >= 30 && imc < 35){
    
    return ModelDados(
      imc : imc , 
      faixa : 'Obesidade grau I');
  }else  if (imc >= 35 && imc < 40){
    
    return ModelDados(
      imc : imc , 
      faixa : 'Obesidade grau II');
  }
    else{
    
    return ModelDados(
      imc : imc , 
      faixa : 'Obesidade grau III');
  }
  
}
}

