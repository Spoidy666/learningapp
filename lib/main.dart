import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningapp/routers/router.dart';
import 'package:learningapp/bloc/themeCubit.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<Themecubit>(create: (_) => Themecubit())],
      child: BlocBuilder<Themecubit, ThemeData>(
        builder: (context, theme) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Crescent learning app',
            theme: theme,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
