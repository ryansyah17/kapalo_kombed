part of 'pages.dart';

class ShoesCatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockShoes.map((e) => GridViewCard(e)).toList(),
        ),
      ),
    );
  }
}
