
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_with_bloc/CartScreen.dart';
import 'package:shopping_cart_with_bloc/bloc/bloc/menucard_bloc.dart';
import 'package:shopping_cart_with_bloc/model/item.dart';
import 'package:shopping_cart_with_bloc/networkimagewidget.dart';


class Menuscreen extends StatefulWidget {
  const Menuscreen(  {super.key});

  @override
  State<Menuscreen> createState() => _MenuscreenState();
}

class _MenuscreenState extends State<Menuscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MenucardBloc>().add(showmenu());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Menu')),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cartscreen()),
            );
        }, icon: Icon(Icons.shopping_cart))
      ],
      ),
     
      body: BlocBuilder<MenucardBloc, MenucardState>(
        buildWhen: (previous, current) => previous.itemlist != current.itemlist,
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.itemlist.length,
            itemBuilder: (context,index){
              final item = state.itemlist[index];
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
                     ElevatedButton(onPressed: (){
                      Item updateitem = Item(unitPrice: item.unitPrice,isadded: item.isadded?false:true, productName: item.productName,
                        productId: item.productId, productDescription: item.productDescription,productThumbnail: item.productThumbnail
                      );
                      
                      context.read<MenucardBloc>().add(updatelist(updateitem: updateitem));
                      if(updateitem.isadded){
                        context.read<MenucardBloc>().add(addtocart(updateitem: updateitem));
                      }
                      if(!updateitem.isadded){
                        
                        context.read<MenucardBloc>().add(removetocart(updateitem: state.itemlist[index]));
                        
                      }
                     }, 
                     child: item.isadded ? Text('   Remove   ') : Text('Add To Cart'),
                     
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
