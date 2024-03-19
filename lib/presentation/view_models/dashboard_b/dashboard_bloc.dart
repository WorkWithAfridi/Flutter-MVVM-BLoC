import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc()
      : super(DashboardInitial(
          count: 0,
        )) {
    onIncrementDashboardCountEvent();
    onDecrementDashboardCountEvent();
  }

  void onIncrementDashboardCountEvent() {
    return on<IncrementDashboardCount>(
      (event, emit) {
        emit(
          DashboardInitial(
            count: state.count + 1,
          ),
        );
      },
    );
  }

  void onDecrementDashboardCountEvent() {
    return on<DecrementDashboardCount>(
      (event, emit) {
        emit(
          DashboardInitial(
            count: state.count - 1,
          ),
        );
      },
    );
  }
}
