import 'package:cred_assignment/expandablestack.dart';
import 'package:flutter/material.dart';

class ExpandableStackView extends StatefulWidget {
  final ExpandableStack stack;

  ExpandableStackView({required this.stack});

  @override
  _ExpandableStackViewState createState() => _ExpandableStackViewState();
}

class _ExpandableStackViewState extends State<ExpandableStackView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.stack.items.length,
      itemBuilder: (context, index) {
        final item = widget.stack.items[index];
        return ExpansionTile(
          title: Text('Item $index'),
          initiallyExpanded: item.isExpanded,
          onExpansionChanged: (expanded) {
            setState(() {
              if (expanded) {
                widget.stack.expand(index);
              } else {
                widget.stack.collapse(index);
              }
            });
          },
          children: <Widget>[
            item.child,
          ],
        );
      },
    );
  }
}
