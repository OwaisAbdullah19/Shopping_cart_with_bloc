import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping_cart_with_bloc/model/item.dart';
import 'package:shopping_cart_with_bloc/respository/itemrepository.dart';

part 'menucard_event.dart';
part 'menucard_state.dart';

class MenucardBloc extends Bloc<MenucardEvent, MenucardState> {
    Itemrepository itemrepository = Itemrepository();
    List<Item> finallist =[];
    List<Item> tempcartlist=[];
  MenucardBloc(this.itemrepository) : super(MenucardState()) {
  
    
    on<showmenu>((event, emit)  {
    finallist =  itemrepository.fetchlist();
    emit(state.copyWith(itemlist: List.from(finallist)));
    });
    on<updatelist>((event, emit) {
      final index = finallist.indexWhere((test) => test.productId == event.updateitem.productId );
      finallist[index] = event.updateitem;
       emit(state.copyWith(itemlist: List.from(finallist)));
    });
    on<addtocart>((event, emit) {
      tempcartlist.add(event.updateitem);
       emit(state.copyWith(cartlist: List.from(tempcartlist)));
    });
    on<removetocart>((event, emit) {
      tempcartlist.remove(event.updateitem);
       emit(state.copyWith(cartlist: List.from(tempcartlist)));
    });
  }
}
