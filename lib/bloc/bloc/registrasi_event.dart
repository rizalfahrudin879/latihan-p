part of 'registrasi_bloc.dart';

@immutable
abstract class RegistrasiEvent extends Equatable {}


class FetchRegistrasiEvent extends RegistrasiEvent {
  @override
  List<User> get props => null;
}

class InputDataRegistrasiEvent extends RegistrasiEvent {
  final User user;
  InputDataRegistrasiEvent({@required this.user});

  @override
  List<Object> get props => [user];

}
