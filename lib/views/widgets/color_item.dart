import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ?  CircleAvatar(
            backgroundColor: kPrimaryColor,
            radius: 45,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 42,
            ),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ColorsListview extends StatefulWidget {
  const ColorsListview({super.key});

  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {
  int currentIndex = 0;
  final List<Color> colors = const [
    Color(0xffedeec9),
    Color(0xffdde7c7),
    Color(0xffbfd8bd),
    Color(0xff98c9a3),
    Color(0xff77bfa3),
    Color(0xfff5b0cb),
    Color(0xffdc6acf),
    Color(0xff745c97),
    Color(0xff39375b),
    Color(0xffc4bbb8),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
