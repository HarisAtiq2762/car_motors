import 'package:bloc/bloc.dart';
import 'package:car_motors/bloc/saveCar/save_car_event.dart';
import 'package:car_motors/bloc/saveCar/save_car_state.dart';
class SaveCarBloc extends Bloc<SaveCarEvent,SaveCarState>{

  SaveCarBloc() : super(SaveCarState.initial());


  @override
  Stream<SaveCarState> mapEventToState(SaveCarEvent event)async*{
    if(event is SaveEvent){
      yield SaveCarState(saved: true);
    }else if(event is UnSaveEvent){
      yield SaveCarState(saved: false);

    }
  }
}