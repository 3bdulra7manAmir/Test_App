import 'package:flutter/material.dart';
import 'package:test_app/Config/themes/app_colors.dart';
import 'package:test_app/features/auth/presentation/widgets/app_form/app_form.dart';

import '../widgets/app_form/app_form_header.dart';


class FormView extends StatelessWidget
{
  const FormView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBlue,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(
            flex: 1,
            child: FormHeader()
          ),
          Expanded(
            flex: 3,
            child: AppForm()
          ),
        ],
      ),
    );
  }
}