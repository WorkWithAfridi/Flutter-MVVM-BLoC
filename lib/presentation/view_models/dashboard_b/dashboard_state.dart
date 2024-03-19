// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState {
  int count;
  DashboardState({
    required this.count,
  });
}

class DashboardInitial extends DashboardState {
  DashboardInitial({required super.count});
}
