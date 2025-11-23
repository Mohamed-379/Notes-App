import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/edit_note_item.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteItem(),));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: const Color(0xffFFCB7A)),
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
                  top: 24,
                ),
                child: Text(
                  "vocabularies, Grammar, ",
                  style: TextStyle(
                      fontSize: 19, color: Colors.black.withOpacity(0.5)),
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
              padding: const EdgeInsets.only(right: 30, bottom: 25),
              child: Text(
                "October 31, 2025",
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}