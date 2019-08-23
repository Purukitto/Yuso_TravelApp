import 'package:flutter/material.dart';
import 'package:yuso/theme/colors.dart';
import 'data.dart';
import 'page_indicator.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _controller;
  int currentPage = 0;
  bool lastPage = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: PageView.builder(
                itemCount: pageList.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                    if (currentPage == pageList.length - 1) {
                      lastPage = true;
                    } else {
                      lastPage = false;
                    }
                  });
                },
                controller: _controller,
                itemBuilder: (context, index) => animateItemBuilder(index)),
          ),
          Positioned(
            left: 100.0,
            bottom: 55.0,
            child: Container(
                width: 160.0,
                child: PageIndicator(currentPage, pageList.length)),
          ),
          Positioned(
            right: 15,
            bottom: 30,
            child: lastPage
                ? FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward, color: primaryYellow),
                    onPressed: () {},
                  )
                : Container(),
          )
        ],
      ),
    );
  }

  animateItemBuilder(int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value = 1;

        if (_controller.position.haveDimensions) {
          value = _controller.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 490,
            width: Curves.easeOut.transform(value) * 300,
            child: child,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryYellow,
        ),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    pageList[index].title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "Open-Sans", //check font name
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
            ),
            Image.asset(pageList[index].imageUrl),
            Container(
              height: 90.0,
              margin: EdgeInsets.only(left: 5),
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 12, left: 34),
                      child: Text(pageList[index].body,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Montserrat-Black",
                            color: Color(0xFF989898),
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
