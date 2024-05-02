import 'package:app_budget/mobile/expense_view_mobile.dart';
import 'package:app_budget/mobile/login_view_mobile.dart';
import 'package:app_budget/web/expense_view_web.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'view_model.dart';
import 'web/login_view_web.dart';
 
class ResponsiveHandler extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(viewModel);
    viewModelProvider.isLoggedIn();

    if (viewModelProvider.isSignedIn == true) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return ExpenseViewWeb();
        } else
          return ExpenseViewMobile();
      });
    } else {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return LoginViewWeb();
        } else
          return LoginViewMobile();
      });
    }
  }
}
