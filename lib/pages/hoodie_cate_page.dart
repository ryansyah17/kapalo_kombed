part of 'pages.dart';

class HoodieCatePage extends StatefulWidget {
  @override
  State<HoodieCatePage> createState() => _HoodieCatePageState();
}

class _HoodieCatePageState extends State<HoodieCatePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: mockHoddie.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500 / 2,
              childAspectRatio: 0.75,
            ),
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return GridViewCard(product: mockHoddie[index]);
            },
          ),
        ),
      ],
    );
  }
}
