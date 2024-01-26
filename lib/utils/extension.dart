import 'package:flutter/material.dart';

extension SliverHelper on Widget {
  Widget toSliver() {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}