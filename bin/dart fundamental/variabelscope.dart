void main (){
  var fordiscount = true;
  var price = 500000;
  num discount = 2;

  if (fordiscount){
    discount = 10 /100 *price;
    
  }
  print('you need to pay: ${price- discount}');
}