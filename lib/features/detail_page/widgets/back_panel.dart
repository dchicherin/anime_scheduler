import "package:anime_scheduler/ui_utils/color_getter.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

//Аппбар для перехода назад
class BackPanel extends StatelessWidget implements PreferredSizeWidget {
  final String pageName;
  final String genre;
  final double height;

  const BackPanel({
    super.key,
    required this.pageName,
    this.height = kToolbarHeight,
    required this.genre,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: IconButton(
        onPressed: () async {
          context.pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      title: Text(
        pageName,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      backgroundColor: getOffColor(genre),
      shape: const Border(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
