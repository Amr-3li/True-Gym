import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:true_gym/Features/home/presentation/view/widgets/posts_list.dart';
import 'package:true_gym/core/utils/consts.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                centerTitle: true,
                backgroundColor: MyColors.appBarColor,
                floating: true,
                snap: true,
                leading: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
                actions: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).push('/chatHomePage');
                    },
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
