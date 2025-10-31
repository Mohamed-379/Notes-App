import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.orange),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Watch English Course",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            contentPadding: const EdgeInsets.all(24),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 8,
              ),
              child: Text(
                "vocabularies, Grammar, ",
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(0.5)),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 20),
            child: Text(
              "October 31, 2025",
              style: TextStyle(
                  fontSize: 18, color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}