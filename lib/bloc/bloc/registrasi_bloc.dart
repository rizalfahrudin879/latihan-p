import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latihan/data/model/user.dart';
import 'package:meta/meta.dart';

part 'registrasi_event.dart';
part 'registrasi_state.dart';

class RegistrasiBloc extends Bloc<RegistrasiEvent, RegistrasiState> {
  User user;
  RegistrasiBloc({@required this.user});

  @override
  RegistrasiState get initialState => RegistrasiInitialState();

  @override
  Stream<RegistrasiState> mapEventToState(RegistrasiEvent event) async* {
    if (event is FetchRegistrasiEvent) {
      yield RegistrasiLoadingState();

      try {
        // User user = await Repository().register(user);
      } catch (e) {
        print(e);
      }
    }
  }
}
