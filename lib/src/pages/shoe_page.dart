import 'package:flutter/material.dart';
import 'package:shoesapp/src/helpers/helpers.dart';
import 'package:shoesapp/src/widgets/index.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusDark();

    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(text: 'For you'),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Hero(tag: 'shoe-1', child: ShoeSizePreview()),
                  ShoeDescription(
                      title: 'Nike Air Max 720',
                      description:
                          "'The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.'")
                ],
              ),
            ),
          ),
          AddButtonCard(price: 180.0),
        ],
      ),
    );
  }
}
