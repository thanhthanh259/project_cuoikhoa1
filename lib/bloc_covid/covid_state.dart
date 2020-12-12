import 'package:project_cuoikhoa/model/covid_list.dart';
import 'package:equatable/equatable.dart';

abstract class CovidState extends Equatable{
  @override
  List<Object> get props => [];
}
class CovidInitState extends CovidState{}
class CovidLoading extends CovidState{}
class CovidLoaded extends CovidState{
  final List<Global> worldData;
  CovidLoaded({this.worldData});
}
class CovidListError extends CovidState{
  final error;
  CovidListError({this.error});
}