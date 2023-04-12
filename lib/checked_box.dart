import 'package:flutter/material.dart';

class CheckedBox extends StatefulWidget {
  const CheckedBox({Key? key}) : super(key: key);

  @override
  State<CheckedBox> createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-15.0, 0.0),
      child: Transform.scale(
        scale: 0.7,
        child: Checkbox(
          value: _isChecked,
          checkColor: Colors.white,
          tristate: false,
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.red;
            }
            return _isChecked ? Colors.green: Colors.white;
          }),
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
      ),
    );
  }
}
