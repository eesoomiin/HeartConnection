import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress_login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;
  String? _emailAddressLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '이메일을 입력하세요';
    }

    if (val.length < 5) {
      return '최소 5자리 이상을 입력하세요';
    }
    if (val.length > 20) {
      return '최대 30자리를 넘길 수 없습다';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return '올바른 이메일 주소가 아닙니다';
    }
    return null;
  }

  // State field(s) for password_login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  String? _passwordLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '비밀번호를 입력하요';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressLoginTextControllerValidator =
        _emailAddressLoginTextControllerValidator;
    passwordLoginVisibility = false;
    passwordLoginTextControllerValidator =
        _passwordLoginTextControllerValidator;
  }

  @override
  void dispose() {
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
