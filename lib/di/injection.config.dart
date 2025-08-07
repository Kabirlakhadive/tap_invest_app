// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../blocs/bond_bloc.dart' as _i328;
import '../blocs/bond_detail/bond_detail_bloc.dart' as _i4;
import '../data/services/bond_api_service.dart' as _i598;
import 'main_module.dart' as _i300;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final mainModule = _$MainModule();
  gh.lazySingleton<_i361.Dio>(() => mainModule.dio);
  gh.factory<_i598.BondApiService>(
    () => _i598.BondApiServiceImpl(dio: gh<_i361.Dio>()),
  );
  gh.factory<_i328.BondBloc>(() => _i328.BondBloc(gh<_i598.BondApiService>()));
  gh.factory<_i4.BondDetailBloc>(
    () => _i4.BondDetailBloc(gh<_i598.BondApiService>()),
  );
  return getIt;
}

class _$MainModule extends _i300.MainModule {}
