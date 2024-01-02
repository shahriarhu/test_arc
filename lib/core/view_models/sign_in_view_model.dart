import 'package:flutter/cupertino.dart';
import 'package:test_arc/core/enums/view_state.dart';
import 'package:test_arc/core/services/authentication_api.dart';
import 'package:test_arc/core/view_models/base_view_model.dart';
import 'package:test_arc/locator.dart';

class SignInViewModel extends BaseViewModel {
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  // String mobileNumber = '';
  // String password = '';

  final AuthenticationAPI _authenticationAPI = locator<AuthenticationAPI>();

  Future<bool>? signIn() async {
    setViewState(ViewState.busy);

    int returnedValue = await _authenticationAPI.signInAPI(mobileNumberController.text, passwordController.text);

    setViewState(ViewState.idle);

    // if (returnedValue == 201) {
    //   return true;
    // } else {
    //   return false;
    // }

    return returnedValue == 201 ? true : false;
  }

  // Future<void>? signIn(String mobileNumber, String password) {
  //   _authenticationAPI.signInAPI(mobileNumber, password);
  // }

  String? mobileNumberValidator(String value) {
    String pattern = r'(^(01)[0-9]{9}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'মোবাইল নম্বর প্রয়োজন';
    } else if (!regExp.hasMatch(value)) {
      return 'সঠিক মোবাইল নম্বর প্রদান করুন';
    }
    return null;
  }

  String? passwordValidator(String value) {
    print(value);
    String pattern = r"(^[a-zA-Z\d@%+'!#$^?:.~\-_.]{8,256}$)";
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'পাসওয়ার্ড প্রয়োজন';
    } else if (value.length < 8) {
      return 'কমপক্ষে ৮ অক্ষর বা তার বেশি প্রয়োজন';
    } else if (!regExp.hasMatch(value)) {
      return 'ভুল অক্ষর ব্যবহার করা হয়েছে';
    }

    return null;
  }
}
