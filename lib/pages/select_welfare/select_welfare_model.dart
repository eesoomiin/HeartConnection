import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_welfare_widget.dart' show SelectWelfareWidget;
import 'package:flutter/material.dart';

class SelectWelfareModel extends FlutterFlowModel<SelectWelfareWidget> {
  ///  Local state fields for this page.

  bool isListFull = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<WelfareRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
