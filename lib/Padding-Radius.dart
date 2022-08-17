// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PaddingUtiliy {
  static const horizanalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const onlyTopandBottomPadding = EdgeInsets.only(top: 25, bottom: 15);
  static const onlyTop = EdgeInsets.only(top: 60);
  static const onlyBottom = EdgeInsets.only(bottom: 16);

  static const avatarPadding = EdgeInsets.all(4.0);
  static const horizonalandverticalPadding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static const dfmargin = EdgeInsets.all(8);
}

class RadiusUtiliy {
  static const onlyTopRadius = BorderRadius.only(
    topLeft: Radius.circular(32),
    topRight: Radius.circular(32),
  );
  static const onlyRadius = BorderRadius.only(
    bottomLeft: Radius.circular(32),
    bottomRight: Radius.circular(32),
  );
  static const defaultRadius = BorderRadius.all(Radius.circular(10));
  static const onlylefRadius = BorderRadius.only(
    topLeft: Radius.circular(8),
    bottomLeft: Radius.circular(8),
  );
}
