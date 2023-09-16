import 'package:flutter/material.dart';
import 'package:ovispaapp/src/widgets/Fonts/montsetext.dart';

class SecondaryButton extends StatelessWidget {

  final Function()? onTap;
  final String text;
  const SecondaryButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 22),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          )
        ),
        child:  MontseText(texto:text,style: const TextStyle(fontSize: 16,color: Colors.black87),),
      ),
    );
  }
}
