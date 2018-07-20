# htmlencodedtext

A Flutter plugin that makes it easier to show HTML Encoded Text in your Material Flutter apps.

## Dependencies

This project used [html_unescape](https://github.com/filiph/html_unescape) to help facilitate converting HTML entities:

- Named Character References (&nbsp;) (2099 of them)
- Decimal Character References (&#225;)
- Hexadecimal Character References (&#xE3)

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).

## Usage

```
class MyApp extends StatelessWidget {
  static final String html =
      '<b>Lorem</b> <i>ipsum</i> <u>dolor</u> <span style="color: #FF0000">sit</span> ' +
          '<span style="text-decoration: underline; font-weight: bold; font-style: italic">amet</span>, ' +
          '<a hef="#">consectetur adipiscing elit</a>, sed do eiusmod tempor incididunt ut ' +
          'labore Foo &#xA9; bar 😀 baz &#x2603; qux et dolore magna aliqua. Ut enim ad &#1F600; minim veniam, quis nostrud exercitation' +
          '<h2>I will display &spades;</h2>' +
          '<p>I will display &#9824;</p>' +
          '<p>I will display &#x2660;</p>';

  final htmlWidg = new HtmlEncodedText(rawHtml: html);
  Widget build(BuildContext context) {
    return Container(
      child: htmlWidg.build(context),
    );
  }
}
```

implement our `main` method

```
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    builder: (context, snapshot) {
      return Scaffold(
        appBar: AppBar(),
        body: MyApp(),
      );
    },
  ));
}
```

### Issues

Don't hesitate to create pull requests.

#### Roadmap

- Support block status for HTML heading tags
- Find and handle invalid HTML (ie: "<This is a poorly formatted paragraph tag</p >>)
