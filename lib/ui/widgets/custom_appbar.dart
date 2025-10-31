import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Notes App", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
        const Spacer(),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white.withOpacity(0.05)),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded, color: Colors.white, size: 26,),),
        )
      ],
    );
  }
}