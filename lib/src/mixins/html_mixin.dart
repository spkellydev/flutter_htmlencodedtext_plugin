import 'package:flutter/material.dart';

/// HtmlMixin
/// Helper methods to flatten and expand HTML nodes
///
class HtmlMixin {
  TextSpan stackToTextSpan(List htmlNodes, BuildContext context) {
    List<TextSpan> children = <TextSpan>[];

    for (int i = 0; i < htmlNodes.length; i++) {
      children.add(_textSpan(htmlNodes[i]));
    }

    return new TextSpan(
        text: '',
        style: DefaultTextStyle.of(context).style,
        children: children);
  }

  TextSpan _textSpan(Map node) {
    TextSpan span = new TextSpan(text: node['text'], style: node['style']);

    return span;
  }
}
