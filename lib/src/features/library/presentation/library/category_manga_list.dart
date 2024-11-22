// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/enum.dart';

import '../../../../routes/router_config.dart';
import '../../../../utils/extensions/custom_extensions.dart';
import '../../../../widgets/emoticons.dart';
import '../../../../widgets/manga_cover/grid/manga_cover_grid_tile.dart';
import '../../../../widgets/manga_cover/list/manga_cover_descriptive_list_tile.dart';
import '../../../../widgets/manga_cover/list/manga_cover_list_tile.dart';
import '../../../auth/auth_provder.dart';
import '../../../manga_book/presentation/manga_details/widgets/edit_manga_category_dialog.dart';
import '../../../settings/presentation/appearance/widgets/grid_cover_min_width.dart';
import '../../domain/category/category_model.dart';
import '../category/controller/edit_category_controller.dart';
import 'controller/library_controller.dart';

class CategoryMangaList extends StatefulHookConsumerWidget {
  const CategoryMangaList({super.key, required this.categoryId});
  final int categoryId;

  @override
  ConsumerState<CategoryMangaList> createState() => CategoryMangaListState();
}

class CategoryMangaListState extends ConsumerState<CategoryMangaList>
    with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.paused:
        ref.read(authProvider.notifier).state = false;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);

    final provider = categoryMangaListWithQueryAndFilterProvider(
        categoryId: widget.categoryId);
    final mangaList = ref.watch(provider);
    final displayMode = ref.watch(libraryDisplayModeProvider);
    refresh() => ref.invalidate(categoryMangaListProvider(widget.categoryId));
    useEffect(() {
      if (mangaList.isNotLoading) refresh();
      return;
    }, []);
    final categoryProvider = getCategoryProvider(categoryId: widget.categoryId);
    final category = ref.watch(categoryProvider);
    final authenticated = ref.watch(authProvider);
    if (category?.locked == true && authenticated == false) {
      authenticate().then((value) {
        ref.read(authProvider.notifier).state = value;
      }).catchError((e) {
        throw e;
      });

      return Emoticons(
        button: TextButton(
          onPressed: () {
            authenticate().then((value) {
              ref.read(authProvider.notifier).state = value;
            }).catchError((e) {
              throw e;
            });
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock_open_rounded),
              SizedBox(width: 8),
              Text("Unlock Category"),
            ],
          ),
        ),
      );
    }
    return mangaList.showUiWhenData(
      context,
      (data) {
        if (data.isBlank) {
          return Emoticons(
            text: context.l10n!.noCategoryMangaFound,
            button: TextButton(
              onPressed: refresh,
              child: Text(context.l10n!.refresh),
            ),
          );
        }
        final Widget mangaList = switch (displayMode) {
          DisplayMode.list || null => ListView.builder(
              itemExtent: 96,
              itemCount: (data?.length).getValueOnNullOrNegative(),
              itemBuilder: (context, index) => MangaCoverListTile(
                manga: data![index],
                onPressed: () {
                  if (data[index].id != null) {
                    MangaRoute(
                      mangaId: data[index].id!,
                      categoryId: widget.categoryId,
                    ).push(context);
                  }
                },
                onLongPress: () async {
                  if (data[index].id != null) {
                    await showDialog(
                      context: context,
                      builder: (context) => EditMangaCategoryDialog(
                        mangaId: data[index].id!,
                        title: data[index].title,
                      ),
                    );
                    refresh();
                  }
                },
                showCountBadges: true,
              ),
            ),
          DisplayMode.grid => GridView.builder(
              gridDelegate:
                  mangaCoverGridDelegate(ref.watch(gridMinWidthProvider)),
              itemCount: (data?.length).getValueOnNullOrNegative(),
              itemBuilder: (context, index) => MangaCoverGridTile(
                onLongPress: () async {
                  if (data[index].id != null) {
                    await showDialog(
                      context: context,
                      builder: (context) => EditMangaCategoryDialog(
                        mangaId: data[index].id!,
                        title: data[index].title,
                      ),
                    );
                    refresh();
                  }
                },
                manga: data![index],
                onPressed: () {
                  if (data[index].id != null) {
                    MangaRoute(
                      mangaId: data[index].id!,
                      categoryId: widget.categoryId,
                    ).push(context);
                  }
                },
                showCountBadges: true,
                showDarkOverlay: false,
              ),
            ),
          DisplayMode.descriptiveList => ListView.builder(
              itemExtent: 176,
              itemCount: (data?.length).getValueOnNullOrNegative(),
              itemBuilder: (context, index) => MangaCoverDescriptiveListTile(
                manga: data![index],
                onPressed: () {
                  if (data[index].id != null) {
                    MangaRoute(
                      mangaId: data[index].id!,
                      categoryId: widget.categoryId,
                    ).push(context);
                  }
                },
                onLongPress: () async {
                  if (data[index].id != null) {
                    await showDialog(
                      context: context,
                      builder: (context) => EditMangaCategoryDialog(
                        mangaId: data[index].id!,
                        title: data[index].title,
                      ),
                    );
                    refresh();
                  }
                },
                showBadges: true,
              ),
            )
        };
        return RefreshIndicator(
          onRefresh: () async => refresh(),
          child: mangaList,
        );
      },
      refresh: refresh,
    );
  }
}
