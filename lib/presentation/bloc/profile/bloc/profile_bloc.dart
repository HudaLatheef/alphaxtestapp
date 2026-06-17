import 'package:alphaxtestapp/core/failures/auth/auth_failure.dart';
import 'package:alphaxtestapp/core/failures/main_failure.dart';
import 'package:alphaxtestapp/data/models/profiledata/profiledata.dart';
import 'package:alphaxtestapp/domain/repositories/profileRepository/i_profile_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileFacade _profileFacade;
  ProfileBloc(this._profileFacade) : super(ProfileState.initial()) {
    on<Ongetprofiledata>((event, emit) async {
   final Either<MainFailure, Profiledata> profiledatasuccessorfailure;
      emit(state.copyWith(isloadingprofiledata: true, getprofileFailureOrSuccessOption: none(), profiledata: Profiledata(), isgettingprofiledata: false));

      profiledatasuccessorfailure = await _profileFacade.getprofiledata();

      profiledatasuccessorfailure.fold(
          (failure) => emit(state.copyWith(
                isloadingprofiledata: false,
                getprofileFailureOrSuccessOption: some(Left(failure)),
                 profiledata: Profiledata(),isgettingprofiledata: false
              )),
          (success) => emit(state.copyWith(
                isloadingprofiledata: false,
                getprofileFailureOrSuccessOption: some(Right(success)),
                 profiledata: success,
               isgettingprofiledata: true
              )));

      emit(state.copyWith(
        isloadingprofiledata: false,
      ));

    });
  }
}
