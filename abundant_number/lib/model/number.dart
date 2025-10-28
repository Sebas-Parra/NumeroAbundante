class Number{
  final int number;

  Number(
    this.number
  );

  int calcutaleAbundant(){
    List<int> n = [];
    int total = 0;
    for(int i = 0; i < number;i++){
      if(number % i == 0){
        n.add(i);
      }
    }

    for(int i = 0; i < n.length; i++){
      total = total + n[i];
    }

    return total;

  }
}