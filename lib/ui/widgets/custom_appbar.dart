import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPress;
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(color: Colors.white, fontSize: 33, fontWeight: FontWeight.w500),),
        const Spacer(),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white.withOpacity(0.05)),
          child: IconButton(onPressed: onPress, icon: Icon(icon, color: Colors.white, size: 27,),),
        )
      ],
    );
  }
}