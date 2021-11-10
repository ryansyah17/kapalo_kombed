part of 'pages.dart';

class CrewneckCatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockCrewneck.map((e) => GridViewCard(e)).toList(),
        ),
      ),
    );
  }
}
