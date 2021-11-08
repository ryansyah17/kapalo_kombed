part of 'pages.dart';

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockShoes.map((e) => CardPage(e)).toList(),
        ),
      ),
    );
  }
}
