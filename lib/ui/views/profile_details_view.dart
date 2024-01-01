import 'package:flutter/material.dart';
import 'package:test_arc/core/view_models/profile_details_view_model.dart';
import 'package:test_arc/ui/views/base_view.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileDetailsViewModel>(
      onModelReady: (model) {
        model.getProfile();
      },
      onModelClose: (model) {
        print('----------------------------------------------');
      },
      builder: (context, model, child) => const Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Details Page'),
          ),
        ),
      ),
    );
  }
}
