part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent {}

class IncrementDashboardCount extends DashboardEvent {}

class DecrementDashboardCount extends DashboardEvent {}
