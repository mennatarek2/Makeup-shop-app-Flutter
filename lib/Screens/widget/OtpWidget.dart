import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        textAlign: TextAlign.center,
      ),
    );
  }
}
