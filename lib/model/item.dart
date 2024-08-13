class Item {
  final String productName,productDescription,productThumbnail, productId;
  final int unitPrice;
  final  bool isadded;
  int quantity;
Item({this.productName = ' ',this.productDescription = '',this.productId =' ',required this.unitPrice,  this.productThumbnail = '' , this.isadded =false,this.quantity =1 ,});
}