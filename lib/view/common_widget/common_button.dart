import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: Colors.white,
        child: SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width,
          child: Text("data"),
        ),
      ),
    );
  }
}
