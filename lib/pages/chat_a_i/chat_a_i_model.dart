import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_a_i_widget.dart' show ChatAIWidget;
import 'package:flutter/material.dart';

class ChatAIModel extends FlutterFlowModel<ChatAIWidget> {
  ///  Local state fields for this page.

  String? inputContent;

  dynamic chatHistory;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (chat)] action in IconButton widget.
  ApiCallResponse? chatGPTResponse;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
