import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharactersShimmer extends StatelessWidget {
  const CharactersShimmer({this.isLoadingMore, super.key});

  final bool? isLoadingMore;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.count(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        padding: EdgeInsets.only(
          left: isLoadingMore != null ? 10 : 16,
          right: isLoadingMore != null ? 10 : 16,
          top: isLoadingMore != null ? 12 : 20,
          bottom: isLoadingMore != null ? 0 : 80,
        ),
        mainAxisSpacing: isLoadingMore != null ? 4 : 12,
        crossAxisSpacing: isLoadingMore != null ? 4 : 12,
        children: [
          ...List.filled(
            isLoadingMore != null ? 2 : 20,
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
    );
  }
}
