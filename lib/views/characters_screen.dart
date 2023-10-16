import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naruto_db/core/blocs/characters/characters_bloc.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/app_text_field.dart';
import 'package:naruto_db/widgets/characters_widget.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final TextEditingController _searchTextController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _debounce?.cancel();
    super.dispose();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _onScroll() {
    if (_isBottom) context.read<CharactersBloc>().add(FetchCharacters());
  }

  void _onSearchCharacter(String name) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.read<CharactersBloc>().add(SearchCharacter(name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    child: AppTextField(
                      // enabled: state.status != ViewStatus.initial,
                      controller: _searchTextController,
                      hintText: "Search character",
                      prefixIcon: const Icon(
                        Icons.search,
                        color: kMuted,
                      ),
                      onChanged: _onSearchCharacter,
                    ),
                  ),
                  Expanded(
                    child: CharactersWidget(
                      state: state,
                      ctx: context,
                      scrollController: _scrollController,
                      searchTextController: _searchTextController,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
