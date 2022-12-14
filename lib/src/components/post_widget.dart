import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/src/components/avatar_widget.dart';
import 'package:clone_instagram/src/components/image_data.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
              type: AvatarType.TYPE3,
              nickName: 'Young_Hoon',
              size: 40,
              thumbPath:
                  'https://thumbs.dreamstime.com/b/cosmos-beauty-deep-space-elements-image-furnished-nasa-science-fiction-art-102581846.jpg'),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ImageData(
                IconPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl:
            'https://h5p.org/sites/default/files/h5p/content/1209180/images/file-6113d5f8845dc.jpeg');
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(IconPath.likeOffIcon, width: 65),
              const SizedBox(width: 15),
              ImageData(IconPath.replyIcon, width: 60),
              const SizedBox(width: 15),
              ImageData(IconPath.directMessage, width: 55),
            ],
          ),
          ImageData(IconPath.bookMarkOffIcon, width: 50),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '????????? 150???',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            '????????? 1 ?????????.\n???????????? ???????????? ?????? ?????????.\n????????? ??? ??????????????? ??????????????? ?????????.',
            prefixText: 'Young_Hoon',
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
            onPrefixTap: () {
              print('Young_Hoon ????????? ??????');
            },
            expandText: '?????????',
            collapseText: '??????',
            maxLines: 2,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          '?????? 199??? ?????? ??????',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        '1??????',
        style: TextStyle(color: Colors.grey, fontSize: 11),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          const SizedBox(height: 15),
          _image(),
          const SizedBox(height: 15),
          _infoCount(),
          const SizedBox(height: 5),
          _infoDescription(),
          const SizedBox(height: 5),
          _replyTextBtn(),
          const SizedBox(height: 5),
          _dateAgo(),
        ],
      ),
    );
  }
}
