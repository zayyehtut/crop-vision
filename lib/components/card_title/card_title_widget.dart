import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_title_model.dart';
export 'card_title_model.dart';

class CardTitleWidget extends StatefulWidget {
  const CardTitleWidget({
    super.key,
    String? title,
    this.icon,
  }) : title = title ?? 'Key Facts';

  final String title;
  final Widget? icon;

  @override
  State<CardTitleWidget> createState() => _CardTitleWidgetState();
}

class _CardTitleWidgetState extends State<CardTitleWidget> {
  late CardTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardTitleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        widget.icon!,
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: Text(
            widget.title,
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w800,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleMediumFamily),
                ),
          ),
        ),
      ],
    );
  }
}
