part of 'pages.dart';

class BraceletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockBracelet.map((e) => CardPage(e)).toList(),
        ),
      ),
    );
  }
}
