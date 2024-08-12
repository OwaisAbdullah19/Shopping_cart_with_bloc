import 'package:shopping_cart_with_bloc/model/item.dart';

class Itemrepository {
   List<Item> itemsList =  [
    Item(productId: '1', productName: 'Fried Fish Burger' ,productDescription: 'Served with fries & coleslaw' , productThumbnail: 'https://taytocafe.com/delivery/assets/products/642da78b9bac1_Double-Tangy-B.png' , unitPrice: 30, ),
    Item(productId: '2' ,productName: 'Loaded Beef Jalapeno' ,productDescription: '200g Premium beef with jalapeno sauce' , productThumbnail: 'https://taytocafe.com/delivery/assets/products/642da91abab43_Loaded-Chicken-Jalapeno-B.png' , unitPrice: 30, ),
    Item(productId: '3',productName: 'Crispy Penny Pasta' ,productDescription: 'Creamy mushroom sauce with three types of bell pepper mushrooms & fried breast fillet' , productThumbnail: 'https://taytocafe.com/delivery/assets/products/1671690922.png' , unitPrice: 50, ),
    Item(productId: '4',productName: 'Moroccan Fish' ,productDescription: "Fried filet of fish served with Moroccan sauce sided by veggies & choice of side" , productThumbnail: 'https://taytocafe.com/delivery/assets/products/1671691271.png' , unitPrice: 20, ),
    Item(productId: '5',productName: 'Creamy Chipotle' ,productDescription: 'Grilled chicken fillet topped with chipotle sauce' , productThumbnail: 'https://taytocafe.com/delivery/assets/products/6569bee77d7c2_12.png' , unitPrice: 40, ),
    Item(productId: '6',productName: 'Onion Rings' ,productDescription: '10 imported crumbed onion rings served with chilli garlic sauce' , productThumbnail: 'https://taytocafe.com/delivery/assets/products/1671634436.png' , unitPrice: 5 ),
    Item(productId: '7',productName: 'Pizza Fries' ,productDescription: 'French fries topped with chicken chunks & pizza sauce with Nachos & cheese' , productThumbnail: 'https://taytocafe.com/delivery/assets/products/1671634207.png' , unitPrice: 10, ),
  ] ;
   

    List<Item> fetchlist()  {
     return itemsList;
   }
  }

   



