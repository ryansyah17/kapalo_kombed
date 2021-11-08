part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int? selectedIndex;
  final List<String>? titles;
  final Function(int)? onTap;

  CustomTabBar({@required this.titles, this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.black),
        child: Stack(
          children: [
            Row(
                children: titles!
                    .map((e) => GestureDetector(
                          onTap: () {
                            if (onTap != null) {
                              onTap!(titles!.indexOf(e));
                            }
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color:
                                          (titles!.indexOf(e) == selectedIndex)
                                              ? Colors.white
                                              : Colors.transparent,
                                      borderRadius: BorderRadius.circular(18)),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style:
                                          (titles!.indexOf(e) == selectedIndex)
                                              ? blackFontStyle2.copyWith(
                                                  fontSize: 15)
                                              : greyFontStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
