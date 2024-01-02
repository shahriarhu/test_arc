import 'package:test_arc/core/enums/view_state.dart';
import 'package:test_arc/core/services/profile_api.dart';
import 'package:test_arc/core/view_models/base_view_model.dart';
import 'package:test_arc/locator.dart';

class ProfileDetailsViewModel extends BaseViewModel {
  final ProfileAPI _profileAPI = locator<ProfileAPI>();

  Future<void> getProfile() async {
    setViewState(ViewState.busy);

    await _profileAPI.getProfilesAPI();

    setViewState(ViewState.idle);
  }
}
