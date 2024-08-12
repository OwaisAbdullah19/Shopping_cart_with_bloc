part of 'menucard_bloc.dart';

 class MenucardState extends Equatable {
  final List<Item> itemlist ;
  final List<Item> cartlist;
  MenucardState({this.itemlist = const [],this.cartlist = const[]});
  
  MenucardState copyWith({List<Item> ? itemlist,List<Item> ? cartlist }){
  return MenucardState(
    itemlist: itemlist??this.itemlist,
    cartlist: cartlist ?? this.cartlist,
  );

  }
  
  @override
  List<Object> get props => [itemlist,cartlist];
}


