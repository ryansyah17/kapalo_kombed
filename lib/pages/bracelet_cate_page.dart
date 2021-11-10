part of 'pages.dart';

class BraceletCatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockBracelet.map((e) => GridViewCard(e)).toList(),
        ),
      ),
    );
  }
}
