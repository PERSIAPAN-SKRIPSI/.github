
    // latihan 1 variabel scope
    // var fordiscount = true;
    // var price = 500000;
    // num discount = 2;
    //
    // if (fordiscount){
    //   discount = 10 /100 *price;
    //
    // }
    // print('you need to pay: ${price- discount}');
  //ini latihan 2
  //   var price = 400000;
  //   var discount = checkDiscount(price);
  //   print('you need to pay : ${price -discount}');
  // }
  // num checkDiscount(num price) {
  //   num discount = 0;      // pembuatan variabel baru dengan scope lebih kecil
  //   if (price >= 100000) {
  //     discount = 10 / 100 * price;
  //   }
  //
  //   return discount;
  //

  //ini latihan ke 3
    var price = 50000;
    bool discountApplied = true;

    void main (){
      var discount = checkDiscount(price);
      print('need to pay :${price-discount}');
    }
    num checkDiscount(num price){
      num discount= 0;

      if (!discountApplied){
          if(price>= 100000){
            discount = 10/100 * price;
            var discountApplied = true;
          }
      }
      return discount;
    }