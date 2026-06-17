// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alphaxtestapp/core/services/itoken.dart' as _i424;
import 'package:alphaxtestapp/core/services/TokenManager.dart' as _i532;
import 'package:alphaxtestapp/domain/repositories/authRepositoy/AuthRepo.dart'
    as _i88;
import 'package:alphaxtestapp/domain/repositories/authRepositoy/i_auth_facade.dart'
    as _i749;
import 'package:alphaxtestapp/domain/repositories/profileRepository/i_profile_facade.dart'
    as _i691;
import 'package:alphaxtestapp/domain/repositories/profileRepository/ProfileRepo.dart'
    as _i537;
import 'package:alphaxtestapp/presentation/bloc/login/bloc/auth_bloc.dart'
    as _i951;
import 'package:alphaxtestapp/presentation/bloc/profile/bloc/profile_bloc.dart'
    as _i493;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i691.IProfileFacade>(() => _i537.ProfileFacade());
    gh.lazySingleton<_i424.itoken>(() => _i532.TokenManager());
    gh.lazySingleton<_i749.IAuthFacade>(() => _i88.AuthFacade());
    gh.factory<_i493.ProfileBloc>(
      () => _i493.ProfileBloc(gh<_i691.IProfileFacade>()),
    );
    gh.factory<_i951.AuthBloc>(() => _i951.AuthBloc(gh<_i749.IAuthFacade>()));
    return this;
  }
}
