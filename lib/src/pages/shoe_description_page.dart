import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/index.dart';

class ShoeDescriptionPage extends StatelessWidget {
  const ShoeDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(tag: 'shoe-1', child: ShoeSizePreview(fullscreen: true)),
              Positioned(
                  top: 60.0,
                  left: 10.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 60.0,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    highlightElevation: 0,
                  ))
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "'The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.'"),
                _BuyNow(),
                _ColorsAndMore(),
                _CustomCircularButtons()
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _CustomCircularButtons extends StatelessWidget {
  const _CustomCircularButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _CircularShadowButton(
              icon: Icon(Icons.heart_broken, color: Colors.red, size: 25)),
          _CircularShadowButton(
              icon: Icon(Icons.add_shopping_cart,
                  color: Colors.grey.withOpacity(0.4), size: 25)),
          _CircularShadowButton(
              icon: Icon(Icons.settings,
                  color: Colors.grey.withOpacity(0.4), size: 25)),
        ],
      ),
    );
  }
}

class _CircularShadowButton extends StatelessWidget {
  const _CircularShadowButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.0,
      height: 55.0,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: -5,
                blurRadius: 20.0,
                offset: Offset(0, 10)),
          ]),
      child: icon,
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  const _ColorsAndMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: const [
              Positioned(
                  left: 90, child: _ColorButton(color: Color(0xff354D56), index: 4)),
              Positioned(
                  left: 60, child: _ColorButton(color: Color(0xff2099F1), index: 3)),
              Positioned(
                  left: 30, child: _ColorButton(color: Color(0xffFFAD29), index: 2)),
              _ColorButton(color: Color(0xffC6D642), index: 1),
            ],
          )),
          const OrangeButton(
            text: 'More related items',
            width: 180.0,
            height: 30.0,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  const _ColorButton({Key? key, required this.color, required this.index}) : super(key: key);

  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: Duration(milliseconds: 300),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _BuyNow extends StatelessWidget {
  const _BuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Text(
              '\$180',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Bounce(
              delay: Duration(seconds: 1),
              from: 8,
              child: OrangeButton(
                text: 'Buy now',
                width: 120.0,
                height: 40.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
