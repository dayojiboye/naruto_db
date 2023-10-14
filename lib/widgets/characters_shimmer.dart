import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharactersShimmer extends StatelessWidget {
  const CharactersShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 20,
            bottom: 80,
          ),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: [
            ...List.filled(
              20,
              Card(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const SizedBox(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
