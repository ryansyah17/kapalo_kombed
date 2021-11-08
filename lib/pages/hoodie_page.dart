part of 'pages.dart';

class HoodiePage extends StatelessWidget {
  const HoodiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: mockHoddie.map((e) => CardPage(e)).toList(),
        ),
      ),
    );
  }
}
