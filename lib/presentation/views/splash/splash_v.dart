import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/resources/dimentions/app_sizes.dart';
import '../../../common/utilities/routing/app_routes.dart';
import '../../view_models/splash_c/splash_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashCubit(),
        ),
      ],
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<SplashCubit>().triggerSplash();

    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashCompleted) {
            Navigator.pushReplacementNamed(
              context,
              ROUTES.getDashboardRoute,
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(AppSizes.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "My App",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              Text(
                "Display Large",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "Display Medium",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Display Small",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                "Headline Medium",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Headline Small",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "Title Large",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Title Medium",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Title Small",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "Body Large",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Body Medium",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Label Large",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "Body Small",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Label Small",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
