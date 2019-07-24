import 'package:flutter/material.dart';
import 'login_bloc.dart';
export 'login_bloc.dart';

/// This class is from
/// https://medium.com/flutterpub/when-firebase-meets-bloc-pattern-fb5c405597e0
class LoginBlocProvider extends InheritedWidget{
  final bloc = LoginBloc();

  LoginBlocProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static LoginBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(LoginBlocProvider) as LoginBlocProvider).bloc;
  }
}
