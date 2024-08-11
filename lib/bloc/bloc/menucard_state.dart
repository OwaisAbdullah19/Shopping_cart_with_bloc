part of 'menucard_bloc.dart';

sealed class MenucardState extends Equatable {
  const MenucardState();
  
  @override
  List<Object> get props => [];
}

final class MenucardInitial extends MenucardState {}
