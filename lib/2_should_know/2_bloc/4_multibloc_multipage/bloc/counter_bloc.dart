import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<int, int> {
  @override
  get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }
}
