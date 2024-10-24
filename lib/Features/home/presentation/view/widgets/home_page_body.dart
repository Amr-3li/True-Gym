import 'package:flutter/material.dart';
import 'package:true_gym/Features/home/presentation/view/widgets/posts_list.dart';
import 'package:true_gym/consts.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: const Color.fromARGB(255, 246, 246, 246),
                shadowColor: MyColors.shadowColor,
                elevation: 2,
                floating: true,
                snap: true,
                leading: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
                actions: [
                  IconButton(
                    onPressed: null,
                    icon: Badge.count(
                        count: 10,
                        child: const Icon(Icons.forum_outlined,
                            color: Colors.black)),
                  )
                ],
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
        body: const PostsList());
  }
}
