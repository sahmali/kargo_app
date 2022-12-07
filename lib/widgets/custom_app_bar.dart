import 'package:flutter/material.dart';
import 'package:kargo_app/utils/custom_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: RawMaterialButton(
          onPressed: () {},
          fillColor: CustomColors.grayBackground,
          elevation: 0,
          child: Icon(
            Icons.person_outline_outlined,
            color: CustomColors.purpleBackground,
            size: 35.0,
          ),
          shape: CircleBorder(),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.notification_important_outlined,
                color: Colors.black,
                size: 30,
              )),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
