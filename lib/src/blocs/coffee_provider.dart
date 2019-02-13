import 'package:flutter/material.dart';
import 'coffee_bloc.dart';
export 'coffee_bloc.dart';

class CoffeeProvider extends InheritedWidget {
  final CoffeeBloc bloc;

  CoffeeProvider({Key key, Widget child}) 
    : bloc = CoffeeBloc(),
    super(key: key, child: child);
  
  bool updateShouldNotify(_) => true;

  static CoffeeBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CoffeeProvider) as CoffeeProvider).bloc;
  }

}