part of 'menucard_bloc.dart';

 class MenucardState extends Equatable {
  final List<Item> itemlist ;
  final List<Item> cartlist;
  int total;
  MenucardState({this.itemlist = const [],this.cartlist = const[],this.total=0});
  
  MenucardState copyWith({List<Item> ? itemlist,List<Item> ? cartlist}){
  return MenucardState(
    itemlist: itemlist??this.itemlist,
    cartlist: cartlist ?? this.cartlist,

  );

  }

  int gettotal(){
    for(int i=0;i<cartlist.length;i++){
  total = total + (cartlist[i].quantity * cartlist[i].unitPrice);
      
    }
    return total;

  }
  
  @override
  List<Object> get props => [itemlist,cartlist,total];
}


