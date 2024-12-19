import '/flutter_flow/flutter_flow_util.dart';
import 'select_welfare_main_widget.dart' show SelectWelfareMainWidget;
import 'package:flutter/material.dart';

class SelectWelfareMainModel extends FlutterFlowModel<SelectWelfareMainWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
