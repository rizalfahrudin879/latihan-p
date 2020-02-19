part of 'registrasi_bloc.dart';

@immutable
abstract class RegistrasiState extends Equatable {}

class RegistrasiInitialState extends RegistrasiState {
  @override
  List<User> get props => null;
}

class RegistrasiLoadingState extends RegistrasiState {
  @override
  List<User> get props => null;
}


class RegistrasiLoadedState extends RegistrasiState {
  final List<User> user;
  RegistrasiLoadedState({@required this.user});

  @override
  List<Object> get props => [user];
}

class RegistrasiErrorState extends RegistrasiState {
  final String error;
  RegistrasiErrorState({@required this.error});

  @override
  List<Object> get props => [error];

}