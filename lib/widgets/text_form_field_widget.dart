import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool obscuredText;

  const TextFormFieldWidget(
      {Key? key,
      required this.label,
      required this.controller,
      required this.obscuredText})
      : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool? isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffECECEC),
        // border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(3),
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscuredText ? isObscured! : false,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xff343434)),
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2),
            ),
            focusColor: const Color(0xffF9F9F9),
            contentPadding: const EdgeInsets.only(
              top: 5,
              left: 10,
            ),
            border: InputBorder.none,
            label: Text(
              widget.label,
              style: const TextStyle(
                  fontSize: 12.8,
                  color: Color(0xffa7a7a7),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'LexendDeca'),
            ),
            labelStyle: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
            suffixIcon: widget.obscuredText == false
                ? null
                : IconButton(
                    splashRadius: 1,
                    onPressed: () {
                      setState(() {
                        isObscured = !isObscured!;
                      });
                    },
                    icon: Icon(
                        isObscured! ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black))),
      ),
    );
  }
}
