// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repositories/repositories_impl.dart' as _i4;
import 'domain/repositories/repository.dart' as _i3;
import 'presentation/bloc/non_profit_bloc/non_profit_bloc.dart' as _i6;
import 'presentation/bloc/project_bloc/project_bloc.dart' as _i7;
import 'presentation/bloc/volunteer_bloc/volunteer_bloc.dart' as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.Repository>(() => _i4.RepositoryImpl());
  gh.factory<_i5.VolunteerBloc>(() => _i5.VolunteerBloc(gh<_i3.Repository>()));
  gh.factory<_i6.NonProfitBloc>(() => _i6.NonProfitBloc(gh<_i3.Repository>()));
  gh.factory<_i7.ProjectBloc>(() => _i7.ProjectBloc(gh<_i3.Repository>()));
  return getIt;
}
