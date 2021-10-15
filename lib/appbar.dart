import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

Widget _customContainer({
  double? width,
  Color? color,
  BoxDecoration? decoration,
}) {
  return Container(
    width: width,
    color: decoration == null ? color : null,
    decoration: decoration != null ? decoration : null,
  );
}

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  const BaseAppBar({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: AppBar(
        leading: Icon(
          LineIcons.list,
          color: Colors.white,
        ),
        actions: [
          Icon(LineIcons.bell, color: Colors.white),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(10, 50, 80, 500),
      ),
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}
