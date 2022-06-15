import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/constants/fonts.dart';
import '../../../../common/navigation/routes.dart';
import '../../../../common/utils/dev_utils.dart';
import '../../../../common/widgets/movie_widget/movie_widget.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  static const _pageSize = 10;

  final PagingController<int, String> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchPage(int pageKey) async {
    safeLog('fetching pages');
    try {
      final newItems = List.generate(
        _pageSize,
        (index) => 'Item $pageKey-$index',
      );
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Favourites',
              style: FontStyles.semiBold22,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: PagedListView<int, String>(
              pagingController: _pagingController,
              itemExtent: 120,
              builderDelegate: PagedChildBuilderDelegate<String>(
                itemBuilder: (ctx, item, index) => GestureDetector(
                  onTap: () => Navigator.of(ctx).pushNamed(rDetailsPage),
                  child: const MovieWidget(),
                ),
              ),
            ),
          ),
        ],
      );
}
