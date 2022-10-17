import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
                height: isChecked ? null : 20,
                width: isChecked ? null : 20,
                decoration: BoxDecoration(
                  color: isChecked
                      ? const Color(0xffCF3C3F)
                      : const Color(0xffECECEC),
                ),
                child: isChecked
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 20,
                      )
                    : null),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          'Manter login',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: 'LexendDeca'),
        )
      ],
    );
  }
}
