import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          _header(),
          _image(),
          _infoCount(),
          _infoDescription(),
          _replyTextBtn(),
          _dateAgo(),
        ],
      ),
    );
  }
}
