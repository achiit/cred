import 'package:flutter/material.dart';

class ExpandableStack {
  final List<ExpandableItem> items;

  ExpandableStack({required this.items});

  void expand(int index) {
    if (index >= 0 && index < items.length) {
      items[index].isExpanded = true;
    }
  }

  void collapse(int index) {
    if (index >= 0 && index < items.length) {
      items[index].isExpanded = false;
    }
  }
}

class ExpandableItem {
  final Widget child;
  bool isExpanded;

  ExpandableItem({required this.child, this.isExpanded = false});
}
