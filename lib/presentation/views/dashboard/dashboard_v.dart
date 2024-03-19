import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources/dimentions/app_sizes.dart';
import '../../view_models/dashboard_b/dashboard_bloc.dart';

class DashboardV extends StatelessWidget {
  const DashboardV({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DashboardBloc(),
        ),
      ],
      child: const _DashboardV(),
    );
  }
}

class _DashboardV extends StatelessWidget {
  const _DashboardV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: getHeight(context),
        width: getWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                return Text(
                  "Count : ${state.count}",
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<DashboardBloc>().add(IncrementDashboardCount());
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    context.read<DashboardBloc>().add(DecrementDashboardCount());
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
