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
  final int animationDuration;

  HorizontalCancelableChipGroup(
      {@required this.items,
        this.availableItems,
        this.animationDuration = 250,
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
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: AnimatedList(
          itemBuilder: (context, index, animation) {
            return buildItem(context, index, animation);
          },
          key: listKey,
          initialItemCount: widget.items.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return index < widget.items.length
        ? SizeTransition(
      axis: Axis.horizontal,
      sizeFactor: animation,
      key: ValueKey<int>(index),
      child: Padding(
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
            _removeItem(index);
          },
        ),
      ),
    )
        : SizedBox();
  }

  _removeItem(int index) {
    setState(() {
      listKey.currentState.removeItem(
        index,
            (context, animation) => buildItem(context, index, animation),
        duration: Duration(milliseconds: widget.animationDuration),
      );

      widget.items.removeAt(index);

      if (widget.availableItems != null) {
        widget.availableItems(widget.items);
      }
    });
  }
}
