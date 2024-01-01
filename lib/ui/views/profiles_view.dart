import 'package:flutter/material.dart';
import 'package:test_arc/core/enums/view_state.dart';
import 'package:test_arc/core/view_models/profies_view_model.dart';
import 'package:test_arc/ui/views/base_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfilesViewModel>(
      onModelReady: (model) {
        model.getProfile();
      },
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Center(
              child: model.state == ViewState.idle
                  ? ListView.builder(
                      itemCount: model.profiles.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Text('${model.profiles[index].serial.toString()} \n ${model.profiles[index].id.toString()}'),
                        ],
                      ),
                    )
                  : CircularProgressIndicator()),
        ),
      ),
    );
  }
}
