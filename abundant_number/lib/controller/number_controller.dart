import 'package:abundant_number/model/number.dart';

class NumberController{
  String calNUmber(String n){
    if(n.isEmpty){
      return 'Fill all fields';
    }

    final n1 = int.parse(n);

    final num = Number(n1);
    final total = num.calcutaleAbundant();

    if(total > n1){
      return "El numero $n1 es abundante";
    }else{
      return "El numero $n1 no es abundante";
    }
  }
}