import 'package:borderaccess/constansts/const_colors.dart';
import 'package:borderaccess/constansts/text_styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RankingTile extends StatefulWidget {
  final int index;
  final String leadingText;
  final String title;
  final Icon trailingIcon;
  final Function(String) onOptionSelected;

  const RankingTile({
    super.key,
    required this.index,
    required this.leadingText,
    required this.title,
    required this.trailingIcon,
    required this.onOptionSelected,
  });

  @override
  _RankingTileState createState() => _RankingTileState();
}

class _RankingTileState extends State<RankingTile> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      width: 360.w,
      decoration: BoxDecoration(
        color: ConstColors.backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: ConstColors.containerBottomColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "${widget.index + 1}",
                style: getTextTheme().displayLarge,
              ),
            ),
          ),
          const Gap(10), // Add some gap between the circle and the dropdown
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                dropdownStyleData: const DropdownStyleData(
                    useSafeArea: true, isOverButton: false),
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 40,
                  width: 140,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
