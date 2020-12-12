import 'package:project_cuoikhoa/a_p_i/dich_vu.dart';
import 'package:project_cuoikhoa/bloc_covid/covid_event.dart';
import 'package:project_cuoikhoa/bloc_covid/covid_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_cuoikhoa/model/covid_list.dart';
class CovidBloc extends Bloc<GlobalEvents, CovidState>{

  final GlobalRepo globalRepo;

  List<Global>globalList;

  CovidBloc({this.globalRepo}) : super(CovidInitState());


  @override
  Stream<CovidState> mapEventToState(GlobalEvents event) async* {
    switch (event){
      case GlobalEvents.fetchGlobal:
        yield CovidLoading();
        globalList = await globalRepo.getGlobalList();
        yield CovidLoaded(worldData: globalList);
        break;

    }

  }
}