import 'package:epicture/widget/scafffold_widget.dart';
import 'package:flutter/material.dart';

class PostImageSectionArgument {
  final String imageHash;

  const PostImageSectionArgument({
    required this.imageHash,
  });
}

class PostsImageSection extends StatelessWidget {
  static const routeName = '/image-with-hash';

  final String imageHash;

  const PostsImageSection({
    Key? key,
    required this.imageHash,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Publication",
      body: Center(
        child: Text(imageHash),
      ),
    );
  }
}
