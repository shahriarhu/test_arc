import 'package:test_arc/core/enums/view_state.dart';
import 'package:test_arc/core/models/profiles_model.dart';
import 'package:test_arc/core/services/profile_api.dart';
import 'package:test_arc/core/view_models/base_view_model.dart';
import 'package:test_arc/locator.dart';

class ProfilesViewModel extends BaseViewModel {
  // String myName = 'SHU';

  // void myFun() {}

  final ProfileAPI _profileAPI = locator<ProfileAPI>();
  List<ProfilesModel> profiles = [];

  Future<void> getProfile() async {
    setViewState(ViewState.busy);

    profiles = await _profileAPI.getProfilesAPI();

    setViewState(ViewState.idle);
  }
}
