void main (){
  for (int i = 1; i <= 400; i++){
    if (i >200){
      break;
    }
    if(i %3 == 0){
      continue;
    }
    print(i);
  }
}
