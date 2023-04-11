import 'package:flutter/material.dart';
import 'package:getscopemobile/Helpers/extensions.dart';

class CustomItemSelector extends StatefulWidget {
  Function(String) selected;

  CustomItemSelector(this.selected);

  @override
  State<CustomItemSelector> createState() => _CustomItemSelectorState();
}

class _CustomItemSelectorState extends State<CustomItemSelector> {
  List<String> items = ["Scrum", "Kanban", "Waterfall", "Todo", "Board"];

  String selected = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    items.forEach((element) {
      widgets.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: InkWell(
          onTap: () {
            selected = element;
            setState(() {});
          },
          child: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: const BorderRadius.all(Radius.circular(5.0) //
                  ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    element,
                    style: CustomSmallTextTextStyle(context),
                  ),
                ),
                Spacer(),
                if (selected == element)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  )
                else
                  Container()
              ],
            ),
          ),
        ),
      ));
    });
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 40,
        children: widgets,
      ),
    );
  }
}
