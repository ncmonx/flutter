// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'template.dart';

class FABTemplate extends TokenTemplate {
  const FABTemplate(String fileName, Map<String, dynamic> tokens) : super(fileName, tokens);

  @override
  String generate() => '''
// Generated version ${tokens["version"]}, ${tokens["date"]}
class _M3Defaults extends FloatingActionButtonThemeData {
  _M3Defaults(this.context, this.type, this.hasChild)
    : _colors = Theme.of(context).colorScheme,
      _textTheme = Theme.of(context).textTheme;

  final BuildContext context;
  final _FloatingActionButtonType type;
  final bool hasChild;
  final ColorScheme _colors;
  final TextTheme _textTheme;

  bool get _isExtended => type == _FloatingActionButtonType.extended;

  @override Color? get foregroundColor => _colors.${color("md.comp.fab.primary.icon")};
  @override Color? get backgroundColor => _colors.${color("md.comp.fab.primary.container")};
  @override Color? get splashColor => _colors.${color("md.comp.fab.primary.pressed.state-layer")};
  @override double get elevation => ${elevation("md.comp.fab.primary.container")};
  @override Color? get focusColor => _colors.${color("md.comp.fab.primary.focus.state-layer")};
  @override double get focusElevation => ${elevation("md.comp.fab.primary.focus.container")};
  @override Color? get hoverColor => _colors.${color("md.comp.fab.primary.hover.state-layer")};
  @override double get hoverElevation => ${elevation("md.comp.fab.primary.hover.container")};
  @override double get highlightElevation => ${elevation("md.comp.fab.primary.pressed.container")};

  @override
  ShapeBorder? get shape {
    switch (type) {
      case _FloatingActionButtonType.regular:
       return ${shape("md.comp.fab.primary.container.shape")};
      case _FloatingActionButtonType.small:
       return ${shape("md.comp.fab.primary.small.container.shape")};
      case _FloatingActionButtonType.large:
       return ${shape("md.comp.fab.primary.large.container.shape")};
      case _FloatingActionButtonType.extended:
       return ${shape("md.comp.extended-fab.primary.container.shape")};
     }
  }

  @override bool? get enableFeedback => true;

  @override
  double? get iconSize {
    switch (type) {
      case _FloatingActionButtonType.regular: return ${value("md.comp.fab.primary.icon.size")};
      case _FloatingActionButtonType.small: return  ${value("md.comp.fab.primary.small.icon.size")};
      case _FloatingActionButtonType.large: return ${value("md.comp.fab.primary.large.icon.size")};
      case _FloatingActionButtonType.extended: return ${value("md.comp.extended-fab.primary.icon.size")};
    }
  }

  @override
  BoxConstraints? get sizeConstraints => const BoxConstraints.tightFor(
    width: ${value("md.comp.fab.primary.container.width")},
    height: ${value("md.comp.fab.primary.container.height")},
  );

  @override
  BoxConstraints? get smallSizeConstraints => const BoxConstraints.tightFor(
    width: ${value("md.comp.fab.primary.small.container.width")},
    height: ${value("md.comp.fab.primary.small.container.height")},
  );

  @override
  BoxConstraints? get largeSizeConstraints => const BoxConstraints.tightFor(
    width: ${value("md.comp.fab.primary.large.container.width")},
    height: ${value("md.comp.fab.primary.large.container.height")},
  );

  @override
  BoxConstraints? get extendedSizeConstraints => const BoxConstraints.tightFor(
    height: ${value("md.comp.extended-fab.primary.container.height")},
  );

  @override double? get extendedIconLabelSpacing => 8.0;
  @override EdgeInsetsGeometry? get extendedPadding => EdgeInsetsDirectional.only(start: hasChild && _isExtended ? 16.0 : 20.0, end: 20.0);
  @override TextStyle? get extendedTextStyle => _textTheme.${textStyle("md.comp.extended-fab.primary.label-text")};
}
''';
}
