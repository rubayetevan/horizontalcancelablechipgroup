library horizontalcancelablechipgroup;

import 'package:flutter/material.dart';

class HorizontalCancelableChipGroup extends StatefulWidget {
  final Function availableItems;
  final List<String> items;
  final double labelTextFontSize;
  final double dividerPadding;
  final Color backgroundColor;
  final Color labelTextColor;
  final Color borderColor;
  final Icon deleteIcon;

  HorizontalCancelableChipGroup(
      {@required this.items,
      this.availableItems,
      this.labelTextColor = Colors.black,
      this.dividerPadding = 5,
      this.backgroundColor = Colors.white,
      this.labelTextFontSize = 14,
      this.deleteIcon = const Icon(Icons.cancel),
      this.borderColor = Colors.black45});

  @override
  _HorizontalCancelableChipGroupState createState() =>
      _HorizontalCancelableChipGroupState();
}

class _HorizontalCancelableChipGroupState
    extends State<HorizontalCancelableChipGroup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: widget.dividerPadding / 2,
                right: widget.dividerPadding / 2),
            child: Chip(
              shape: StadiumBorder(
                side: BorderSide(color: widget.borderColor),
              ),
              backgroundColor: widget.backgroundColor,
              labelStyle: TextStyle(
                  color: widget.labelTextColor,
                  fontSize: widget.labelTextFontSize),
              label: Text(
                widget.items[index],
              ),
              deleteIcon: widget.deleteIcon,
              onDeleted: () {
                if (widget.items.contains(widget.items[index])) {
                  widget.items.remove(widget.items[index]);
                  if (widget.availableItems != null) {
                    widget.availableItems(widget.items);
                  }
                  setState(() {});
                }
              },
            ),
          );
        },
        itemCount: widget.items.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
