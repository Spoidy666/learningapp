import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningapp/bloc/themeCubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: BlocBuilder<Themecubit, ThemeData>(
        builder: (context, theme) {
          final isDarkMode = theme.brightness == Brightness.dark;

          return ListView(
            children: [
              SwitchListTile(
                title: const Text('Dark Mode'),
                value: isDarkMode,
                onChanged: (value) {
                  context.read<Themecubit>().toggleTheme();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
