// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasources/firestore_service.dart' as _i4;
import 'data/datasources/linkedin_datasource.dart' as _i9;
import 'data/repositories/repositories_impl.dart' as _i6;
import 'domain/repositories/repository.dart' as _i5;
import 'presentation/bloc/non_profit_bloc/non_profit_bloc.dart' as _i10;
import 'presentation/bloc/project_bloc/project_bloc.dart' as _i11;
import 'presentation/bloc/volunteer_bloc/volunteer_bloc.dart' as _i7;
import 'register_module.dart' as _i12;

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
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseFirestore>(() => registerModule.instance);
  gh.factory<_i4.FirestoreService>(
      () => _i4.FirestoreService(gh<_i3.FirebaseFirestore>()));
  gh.factory<_i5.Repository>(
      () => _i6.RepositoryImpl(gh<_i4.FirestoreService>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'LinkedinApiBaseUrl',
  );
  gh.factory<_i7.VolunteerBloc>(() => _i7.VolunteerBloc(gh<_i5.Repository>()));
  gh.lazySingleton<_i8.Dio>(() => registerModule
      .dioProvider(gh<String>(instanceName: 'LinkedinApiBaseUrl')));
  gh.factory<_i9.LinkedinDatasource>(
      () => _i9.LinkedinDatasourceImpl(dio: gh<_i8.Dio>()));
  gh.factory<_i10.NonProfitBloc>(
      () => _i10.NonProfitBloc(gh<_i5.Repository>()));
  gh.factory<_i11.ProjectBloc>(() => _i11.ProjectBloc(gh<_i5.Repository>()));
  return getIt;
}

class _$RegisterModule extends _i12.RegisterModule {}
