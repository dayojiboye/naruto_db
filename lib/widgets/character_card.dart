import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({
    required this.name,
    required this.id,
    required this.image,
    super.key,
  });

  final String name;
  final int id;
  final String image;

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  bool isAvatarError = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              spreadRadius: 3.5,
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircleAvatar(
            //   radius: 40,
            //   backgroundColor: const Color.fromRGBO(204, 204, 204, 1),
            //   backgroundImage: NetworkImage(
            //     isAvatarError
            //         ? "https://via.placeholder.com/150?text=${widget.name}"
            //         : widget.image,
            //   ),
            //   onBackgroundImageError: (exception, stackTrace) => setState(() {
            //     isAvatarError = true;
            //   }),
            // ),
            const YMargin(12),
            Text(
              widget.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
