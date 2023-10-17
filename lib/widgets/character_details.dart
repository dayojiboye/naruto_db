import 'package:flutter/material.dart';
import 'package:naruto_db/core/blocs/character_details/character_details_bloc.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:shimmer/shimmer.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({
    required this.state,
    required this.onPageChanged,
    required this.activeImageIndex,
    super.key,
  });

  final CharacterDetailsState state;
  final void Function(int)? onPageChanged;
  final int activeImageIndex;

  @override
  Widget build(BuildContext context) {
    // print(state.character!.personal!.height);
    List<Widget> pageViewIndicator(imagesLength, currentIndex) {
      return List<Widget>.generate(
        imagesLength,
        (index) {
          return Container(
            margin: const EdgeInsets.all(3),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: currentIndex == index ? kPrimary : kGhost,
              shape: BoxShape.circle,
            ),
          );
        },
      );
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: state.character!.images.isNotEmpty
                    ? state.character?.images.length
                    : 1,
                pageSnapping: true,
                padEnds: false,
                onPageChanged: onPageChanged,
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.network(
                      state.character!.images.isEmpty
                          ? "https://via.placeholder.com/600?text=${state.character?.name}"
                          : state.character!.images[pagePosition],
                      errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                            "https://via.placeholder.com/600?text=${state.character?.name}");
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: const Card(
                            elevation: 1.0,
                            child: SizedBox(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageViewIndicator(
              state.character?.images.length,
              activeImageIndex,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const YMargin(32),
                const HeadingText(title: "Debut"),
                Debut(
                  title: "Appears in:",
                  value: state.character?.debut?.appearsIn,
                ),
                Debut(
                  title: "Novel",
                  value: state.character?.debut?.novel,
                ),
                const YMargin(32),
                const HeadingText(title: "Titles"),
                // PersonalTitles(
                //     titles: state.character!.personal?.titles != null
                //         ? state.character?.personal.titles
                //         : [])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// To-Do: move blow widgets to respective files
// Heading Text
class HeadingText extends StatelessWidget {
  const HeadingText({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: kTextPrimary,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
    );
  }
}

// Debut
class Debut extends StatelessWidget {
  const Debut({
    required this.title,
    this.value,
    super.key,
  });

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          width: double.infinity,
          decoration: const BoxDecoration(
            border: BorderDirectional(
              bottom: BorderSide(
                color: kGhost,
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kTextPrimary,
                  fontSize: 16,
                ),
              ),
              const XMargin(4),
              Text(
                value ?? "N/A",
                style: const TextStyle(
                  color: kTextPrimary,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const YMargin(8),
      ],
    );
  }
}

// Personal Title
class PersonalTitles extends StatelessWidget {
  const PersonalTitles({required this.titles, super.key});

  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return Text(titles.toString());
  }
}
