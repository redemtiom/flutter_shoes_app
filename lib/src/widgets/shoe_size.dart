import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 430.0,
        decoration: BoxDecoration(
            color: Color(0xffFFCF53), borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [_ShadowShoe(), _ShoeSizes()],
        ),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  const _ShoeSizes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ShoeSizeBox(size: 7),
          _ShoeSizeBox(size: 7.5),
          _ShoeSizeBox(size: 8),
          _ShoeSizeBox(size: 8.5),
          _ShoeSizeBox(
            size: 9,
            isActive: true,
          ),
          _ShoeSizeBox(size: 9.5),
        ],
      ),
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  const _ShoeSizeBox({Key? key, required this.size, this.isActive = false})
      : super(key: key);

  final double size;
  final bool isActive;
  //#EE9D26
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: (isActive) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if(isActive) BoxShadow(color: Color(0xffF1A23A), blurRadius: 10.0, offset: Offset(0,5)) 
          ]),
      child: Text(
        '${size.toString().replaceAll('.0', '')}',
        style: TextStyle(
            color: (isActive) ? Colors.white : Color(0xffF1A23A),
            fontSize: 16.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  const _ShadowShoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 20.0,
            right: 0.0,
            child: _Shadow(),
          ),
          Image(
            image: AssetImage('assets/imgs/azul.png'),
          )
        ],
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  const _Shadow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230.0,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40.0)]),
      ),
    );
  }
}
