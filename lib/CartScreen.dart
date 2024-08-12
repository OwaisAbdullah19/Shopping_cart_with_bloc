import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_with_bloc/bloc/bloc/menucard_bloc.dart';
import 'package:shopping_cart_with_bloc/model/item.dart';
import 'package:shopping_cart_with_bloc/networkimagewidget.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart')),
      ),
      body: BlocBuilder<MenucardBloc, MenucardState>(
        
        builder: (context, state) {
          print('hello');
         /*  final filteredList = state.itemlist.where((item) => item.isadded).toList();

          if (filteredList.isEmpty) {
            return Center(child: Text('No items in the cart.', style: TextStyle(color: Colors.white)));
          }
         Another method rather than creating list */
          return ListView.builder(
            itemCount: state.cartlist.length,
            
            itemBuilder: (context,index){
              final item = state.cartlist[index];
              
              return Card(
                child: Column(
                children: [
                    Row(
                      children: [
                        
                     NetworkImageWidget(imageUrl: item.productThumbnail,
                     height: 100,
                     width: 100,
                     ),
                     SizedBox(width: 10,),
                     Expanded(

                       child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(item.productName,style: TextStyle(fontSize: 18,color: Colors.white),),
                          Text(item.productDescription ,style: TextStyle(fontSize: 14,color: Colors.white),),
                          Text(r"$"+item.unitPrice.toString(),style: TextStyle(fontSize: 16,color: Colors.white),),
                        ],
                       ),
                     ),
              
                      
                    
                     
                  
                     
                      ],
                      
                    )
                  ],
                  
                ),
              );
              
 
     }
            
            );
        },
      ),
    );
  }
}