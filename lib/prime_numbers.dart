void main(){
  getPrimeNumbers(10, 20);
}



void getPrimeNumbers(int min,int max){
  

  bool isPrime= true;
  List<int> primeNumberList =[];
  for(int i=min;i<max;i++){
    if(i==0 || i==1){
      continue;
    }
  
    isPrime =true;
    for(int j=2;j<i;j++){
      if(i%j==0){
        isPrime=false;
       break;
      }
       
      }
       if(isPrime==true){
         primeNumberList.add(i);
       }
    }
  print(primeNumberList);
  }