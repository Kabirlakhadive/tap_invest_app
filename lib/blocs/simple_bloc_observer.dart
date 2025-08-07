import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This class will print all BLoC state changes and errors to the console.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // We only want to print in debug mode.
    if (kDebugMode) {
      print(
        '${bloc.runtimeType} ${change.currentState} -> ${change.nextState}',
      );
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      print('${bloc.runtimeType} $error $stackTrace');
    }
    super.onError(bloc, error, stackTrace);
  }
}
