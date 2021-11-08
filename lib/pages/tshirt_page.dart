part of 'pages.dart';

class TshirtPage extends StatelessWidget {
  const TshirtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockTShirt.map((e) => CardPage(e)).toList(),
        ),
      ),
    );
  }
}
