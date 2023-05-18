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
import 'package:notes_app/applications/bloc/home_bloc.dart' as _i5;
import 'package:notes_app/domain/home/notes_model_services.dart' as _i3;
import 'package:notes_app/infrastructure/home/notes_functions.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.NotesModelServices>(() => _i4.NotesFunctions());
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc(gh<_i3.NotesModelServices>()));
    return this;
  }
}
