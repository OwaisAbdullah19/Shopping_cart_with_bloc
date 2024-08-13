part of 'menucard_bloc.dart';

 class MenucardEvent extends Equatable {
  const MenucardEvent();

  @override
  List<Object> get props => [];
}
 class showmenu extends MenucardEvent{}
 
 class updatelist extends MenucardEvent{
 final Item updateitem;
 updatelist({required this.updateitem});
   @override
  List<Object> get props => [updateitem];

 }
class addtocart extends MenucardEvent{
final Item updateitem;
 addtocart({required this.updateitem});
   @override
  List<Object> get props => [updateitem];
}
class removetocart extends MenucardEvent{
final Item updateitem;
 removetocart({required this.updateitem});
   @override
  List<Object> get props => [updateitem];
}


class Increasequantity extends MenucardEvent{
final Item updateitem;
 Increasequantity({required this.updateitem});
   @override
  List<Object> get props => [updateitem];
}


class Decreasequantity extends MenucardEvent{
final Item updateitem;
 Decreasequantity({required this.updateitem});
   @override
  List<Object> get props => [updateitem];
}