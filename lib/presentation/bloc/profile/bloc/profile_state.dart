part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
   factory ProfileState({
    required bool? isloadingprofiledata,
   required Profiledata? profiledata,
     required  Option<Either<MainFailure, Profiledata>>? getprofileFailureOrSuccessOption,
     required bool? isgettingprofiledata


    
     }) = _ProfileState;

    factory ProfileState.initial() => ProfileState(
    isloadingprofiledata: false,
    profiledata:Profiledata(),
    getprofileFailureOrSuccessOption:none(),
    isgettingprofiledata:false

    );
}
