import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int pageCount;
  PageIndicator(this.currentIndex, this.pageCount);

  _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 8.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.yellow[500] : Colors.white70,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 2), blurRadius: 2.0)
            ]),
      ),
    );
  }

  _buildPageIndicators() {
    List<Widget> indicatorList = [];
    for (int i = 0; i < pageCount; i++) {
      indicatorList
          .add(i == currentIndex ? _indicator(true) : _indicator(false));
    }
    return indicatorList;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildPageIndicators(),
    );
  }
}
