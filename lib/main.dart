import 'package:flutter/material.dart';
import 'package:tap_invest_app/blocs/simple_bloc_observer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_invest_app/pages/home_page.dart';
import 'package:tap_invest_app/di/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest_app/blocs/bond_bloc.dart';
import 'package:tap_invest_app/blocs/bond_event.dart';

void main() {
  configureDependencies();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tap Invest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          background: Colors.grey[100],
        ),
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: const Color(0xffF8F8F8),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) =>
            getIt<BondBloc>()..add(const BondEvent.fetchRequested()),
        child: const HomePage(),
      ),
    );
  }
}
