import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.orange,
          color: Colors.black,
        ),
      ),
    );
  }
}
