import 'package:flutter/material.dart';
import 'package:naruto_db/core/blocs/character_details/character_details_bloc.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/debut_details.dart';
import 'package:naruto_db/widgets/details_heading_text.dart';
import 'package:naruto_db/widgets/family_details.dart';
import 'package:naruto_db/widgets/nature_type_details.dart';
import 'package:naruto_db/widgets/personal_details.dart';
import 'package:naruto_db/widgets/titles_details.dart';
import 'package:naruto_db/widgets/voice_actors_details.dart';
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 50),
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(0),
                              ),
                            ),
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
          state.character!.images.length > 1
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pageViewIndicator(
                    state.character?.images.length,
                    activeImageIndex,
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titles
                TitlesDetails(
                  titles: state.character?.personal?.titles ?? [],
                ),
                // Debut
                DetailsHeadingText(
                  title: "Debut",
                  isHidden: state.character?.debut == null,
                ),
                DebutDetails(
                  title: "Manga",
                  value: state.character?.debut?.manga,
                ),
                DebutDetails(
                  title: "Anime",
                  value: state.character?.debut?.anime,
                ),
                DebutDetails(
                  title: "Novel",
                  value: state.character?.debut?.novel,
                ),
                DebutDetails(
                  title: "Movie",
                  value: state.character?.debut?.movie,
                ),
                DebutDetails(
                  title: "Game",
                  value: state.character?.debut?.game,
                ),
                DebutDetails(
                  title: "OVA",
                  value: state.character?.debut?.ova,
                ),
                DebutDetails(
                  title: "Appears in",
                  value: state.character?.debut?.appearsIn,
                ),
                // Voice Actors
                DetailsHeadingText(
                  title: "Voice Actors",
                  isHidden: state.character?.voiceActors == null,
                ),
                VoiceActorsDetails(
                  voiceActors: state.character?.voiceActors?.japanese,
                  title: "Japanese",
                ),
                VoiceActorsDetails(
                  voiceActors: state.character?.voiceActors?.english,
                  title: "English",
                ),
                // Personal
                DetailsHeadingText(
                  title: "Personal",
                  isHidden: state.character?.personal == null,
                ),
                PersonalDetails(
                  title: "Species",
                  value: state.character?.personal?.species,
                ),
                PersonalDetails(
                  title: "Birthdate",
                  value: state.character?.personal?.birthdate,
                ),
                PersonalDetails(
                  title: "Sex",
                  value: state.character?.personal?.sex,
                ),
                PersonalDetails(
                  title: "Age",
                  value: state.character?.personal?.age,
                ),
                PersonalDetails(
                  title: "Status",
                  value: state.character?.personal?.status,
                ),
                PersonalDetails(
                  title: "Height",
                  value: state.character?.personal?.height,
                ),
                PersonalDetails(
                  title: "Weight",
                  value: state.character?.personal?.weight,
                ),
                PersonalDetails(
                  title: "Blood type",
                  value: state.character?.personal?.bloodType,
                ),
                PersonalDetails(
                  title: "Kekkei Genkai",
                  value: state.character?.personal?.kekkeiGenkai,
                ),
                PersonalDetails(
                  title: "Classification",
                  value: state.character?.personal?.classification,
                ),
                PersonalDetails(
                  title: "Tailed Beast",
                  value: state.character?.personal?.tailedBeast,
                ),
                PersonalDetails(
                  title: "Occupation",
                  value: state.character?.personal?.occupation,
                ),
                PersonalDetails(
                  title: "Affiliation",
                  value: state.character?.personal?.affiliation,
                ),
                PersonalDetails(
                  title: "Team",
                  value: state.character?.personal?.team,
                ),
                PersonalDetails(
                  title: "Clan",
                  value: state.character?.personal?.clan,
                ),
                // Rank
                DetailsHeadingText(
                  title: "Rank",
                  isHidden: state.character?.rank == null,
                ),
                PersonalDetails(
                  title: "Ninja Rank",
                  value: state.character?.rank?.ninjaRank,
                ),
                PersonalDetails(
                  title: "Ninja Registration",
                  value: state.character?.rank?.ninjaRegistration,
                ),
                FamilyDetails(state: state),
                // Nature Type
                NatureTypeDetails(
                  title: "Nature Type",
                  value: state.character?.natureType,
                  state: state,
                ),
                // Jutsu
                NatureTypeDetails(
                  title: "Jutsu",
                  value: state.character?.jutsu,
                  state: state,
                ),
                // Tools
                NatureTypeDetails(
                  title: "Tools",
                  value: state.character?.tools,
                  state: state,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
