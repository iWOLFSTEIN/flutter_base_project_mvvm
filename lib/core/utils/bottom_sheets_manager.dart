import 'package:flutter/material.dart';

dynamic showModalSheet({
  required BuildContext context,
  required Widget content,
  Color? backgroundColor,
  bool showDragHandle = false,
  bool useSafeArea = true,
  bool isScrollControlled = false,
}) async {
  final result = await showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      useSafeArea: useSafeArea,
      showDragHandle: showDragHandle,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      clipBehavior: Clip.hardEdge,
      builder: (context) => content);
  return result;
}
