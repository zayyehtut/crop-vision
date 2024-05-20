// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomInkWellWidget extends StatefulWidget {
  const CustomInkWellWidget({
    super.key,
    this.width,
    this.height,
    this.onTap, // Add this line to handle tap events
  });

  final double? width;
  final double? height;
  final VoidCallback? onTap; // Add this line to handle tap events

  @override
  State<CustomInkWellWidget> createState() => _CustomInkWellWidgetState();
}

class _CustomInkWellWidgetState extends State<CustomInkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 100,
      height: widget.height ?? 50,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Tap Me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
