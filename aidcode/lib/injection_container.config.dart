// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasources/firestore_service.dart' as _i4;
import 'data/datasources/github_datasource.dart' as _i6;
import 'data/datasources/linkedin_datasource.dart' as _i7;
import 'data/repositories/repositories_impl.dart' as _i9;
import 'domain/repositories/repository.dart' as _i8;
import 'presentation/bloc/non_profit_bloc/non_profit_bloc.dart' as _i11;
import 'presentation/bloc/project_bloc/project_bloc.dart' as _i12;
import 'presentation/bloc/volunteer_bloc/volunteer_bloc.dart' as _i10;
import 'register_module.dart' as _i13;

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
  gh.factory<String>(
    () => registerModule.linkedinBaseUrl,
    instanceName: 'LinkedinApiBaseUrl',
  );
  gh.factory<String>(
    () => registerModule.githubBaseUrl,
    instanceName: 'GithubApiBaseUrl',
  );
  gh.lazySingleton<_i5.Dio>(
    () => registerModule
        .linkedinDioProvider(gh<String>(instanceName: 'LinkedinApiBaseUrl')),
    instanceName: 'LinkedinDio',
  );
  gh.lazySingleton<_i5.Dio>(
    () => registerModule
        .githubDioProvider(gh<String>(instanceName: 'GithubApiBaseUrl')),
    instanceName: 'GithubDio',
  );
  gh.factory<_i6.GithubDatasource>(() =>
      _i6.GithubDatasourceImpl(dio: gh<_i5.Dio>(instanceName: 'GithubDio')));
  gh.factory<_i7.LinkedinDatasource>(() => _i7.LinkedinDatasourceImpl(
      dio: gh<_i5.Dio>(instanceName: 'LinkedinDio')));
  gh.factory<_i8.Repository>(() => _i9.RepositoryImpl(
        gh<_i4.FirestoreService>(),
        gh<_i7.LinkedinDatasource>(),
        gh<_i6.GithubDatasource>(),
      ));
  gh.factory<_i10.VolunteerBloc>(
      () => _i10.VolunteerBloc(gh<_i8.Repository>()));
  gh.factory<_i11.NonProfitBloc>(
      () => _i11.NonProfitBloc(gh<_i8.Repository>()));
  gh.factory<_i12.ProjectBloc>(() => _i12.ProjectBloc(gh<_i8.Repository>()));
  return getIt;
}

class _$RegisterModule extends _i13.RegisterModule {}
