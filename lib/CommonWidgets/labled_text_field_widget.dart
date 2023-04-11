import 'package:flutter/material.dart';

import '../Helpers/extensions.dart';

class LabledTextField extends StatefulWidget {
  String lable;
  String hint;
  Function(String) onchange;
  TextEditingController? controller;

  LabledTextField(
      {required this.lable,
      required this.hint,
      required this.onchange,
      this.controller});

  @override
  State<LabledTextField> createState() => _LabledTextFieldState();
}

class _LabledTextFieldState extends State<LabledTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child:
                    Text(widget.lable, style: CustomLableTextStyle(context))),
          ),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: widget.hint,
                hintStyle: CustomHintStyle(context)),
            onChanged: widget.onchange,
          ),
        ],
      ),
    );
  }
}
