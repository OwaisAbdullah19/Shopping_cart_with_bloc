class Item {
  final String productName,productDescription,productThumbnail, productId;
  final double unitPrice;
   bool isadded;
Item({this.productName = ' ',this.productDescription = '',this.productId =' ',required this.unitPrice,  this.productThumbnail = '' , this.isadded =false});
}