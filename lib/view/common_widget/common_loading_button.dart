import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({super.key, this.bottonWidth, this.bottonHeight});

  final double? bottonWidth;
  final double? bottonHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: bottonHeight ?? 50,
        width: bottonWidth ?? MediaQuery.sizeOf(context).width,
        child: const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.orange,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
