import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SignupemailField widget.
  FocusNode? signupemailFieldFocusNode;
  TextEditingController? signupemailFieldTextController;
  String? Function(BuildContext, String?)?
      signupemailFieldTextControllerValidator;
  String? _signupemailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SignupPasswordField widget.
  FocusNode? signupPasswordFieldFocusNode;
  TextEditingController? signupPasswordFieldTextController;
  late bool signupPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordFieldTextControllerValidator;
  String? _signupPasswordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return '7 character minimum';
    }
    if (val.length > 20) {
      return '20 character maximum';
    }

    return null;
  }

  // State field(s) for SignupConfirmField widget.
  FocusNode? signupConfirmFieldFocusNode;
  TextEditingController? signupConfirmFieldTextController;
  late bool signupConfirmFieldVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmFieldTextControllerValidator;
  String? _signupConfirmFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Passwords don\'t match';
    }

    return null;
  }

  // State field(s) for LoginEmailField widget.
  FocusNode? loginEmailFieldFocusNode;
  TextEditingController? loginEmailFieldTextController;
  String? Function(BuildContext, String?)?
      loginEmailFieldTextControllerValidator;
  // State field(s) for LoginPasswordField widget.
  FocusNode? loginPasswordFieldFocusNode;
  TextEditingController? loginPasswordFieldTextController;
  late bool loginPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      loginPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupemailFieldTextControllerValidator =
        _signupemailFieldTextControllerValidator;
    signupPasswordFieldVisibility = false;
    signupPasswordFieldTextControllerValidator =
        _signupPasswordFieldTextControllerValidator;
    signupConfirmFieldVisibility = false;
    signupConfirmFieldTextControllerValidator =
        _signupConfirmFieldTextControllerValidator;
    loginPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupemailFieldFocusNode?.dispose();
    signupemailFieldTextController?.dispose();

    signupPasswordFieldFocusNode?.dispose();
    signupPasswordFieldTextController?.dispose();

    signupConfirmFieldFocusNode?.dispose();
    signupConfirmFieldTextController?.dispose();

    loginEmailFieldFocusNode?.dispose();
    loginEmailFieldTextController?.dispose();

    loginPasswordFieldFocusNode?.dispose();
    loginPasswordFieldTextController?.dispose();
  }
}
