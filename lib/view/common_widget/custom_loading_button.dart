import 'package:flutter/material.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({super.key, this.bottonWidth});

  final double? bottonWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      color: Colors.blue,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: SizedBox(
          height: 35,
          width: bottonWidth ?? MediaQuery.sizeOf(context).width,
          child: const CircularProgressIndicator(
            backgroundColor: Colors.orange,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
