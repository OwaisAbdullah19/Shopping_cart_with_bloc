import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_with_bloc/bloc/bloc/menucard_bloc.dart';
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
        title: Text('Cart'),
      ),
      body: BlocBuilder<MenucardBloc, MenucardState>(
        builder: (context, state) {
          if (state.cartlist.isEmpty) {
            return Center(
              child: Text(
                'Cart is Empty!',
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            return Stack(
              children: [
                ListView.builder(
                  itemCount: state.cartlist.length,
                  itemBuilder: (context, index) {
                    final item = state.cartlist[index];

                    return Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              NetworkImageWidget(
                                imageUrl: item.productThumbnail,
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.productName,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    Text(
                                      item.productDescription,
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                    Text(
                                      r"$" + item.unitPrice.toString(),
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<MenucardBloc>().add(Decreasequantity(updateitem: item));
                                },
                                child: Icon(Icons.remove),
                              ),
                              Text(
                                '  ' + item.quantity.toString() + '  ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<MenucardBloc>().add(Increasequantity(updateitem: item));
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          r"$" + state.gettotal().toString(),
                              style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
