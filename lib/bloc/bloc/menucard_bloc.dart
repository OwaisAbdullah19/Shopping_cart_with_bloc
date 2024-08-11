import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'menucard_event.dart';
part 'menucard_state.dart';

class MenucardBloc extends Bloc<MenucardEvent, MenucardState> {
  MenucardBloc() : super(MenucardInitial()) {
    on<MenucardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
