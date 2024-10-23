import 'package:flutter/material.dart';
import 'package:true_gym/Features/home/presentation/view/widgets/bost_reaction_bar.dart';
import 'package:true_gym/Features/home/presentation/view/widgets/post_header.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(name: "amr"),
          SizedBox(height: 10),
          Text(
              "lorem ipsum dolor sit amet\nlorem ipsum dolor sit amet \nlorem ipsum dolor sit amet",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              )),
          Divider(),
          ReactionContainerBar()
        ],
      ),
    );
  }
}
