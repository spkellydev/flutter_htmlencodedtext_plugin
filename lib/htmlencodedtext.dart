library htmlencodedtext;

import 'package:flutter/material.dart';
import 'src/mixins/html_mixin.dart';
import 'src/mixins/html_parser.dart';
import 'package:html_unescape/html_unescape.dart';

/// Description: Processes HTML from a [string], and converts it into Flutter-friendly [RichText] with build method
///
/// Constructor: <String> [rawHtml]
///
/// Usage: Instaniate the object and pass in Html string, call the `.build(BuildContext context)` method and pass in context to display
class HtmlEncodedText extends HtmlParser with HtmlMixin {
  final String rawHtml;

  HtmlEncodedText({this.rawHtml});

  Widget build(BuildContext context) {
    final unscape = new HtmlUnescape();

    String text = unscape.convert(this.rawHtml);
    List nodes = this.parse(text);
    TextSpan span = this.stackToTextSpan(nodes, context);
    var contents = RichText(
      text: span,
      textDirection: TextDirection.ltr,
    );

    return contents;
  }
}
