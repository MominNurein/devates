import 'package:devates/core/styles/text_style.dart';
import 'package:devates/helpers/route_helper.dart';
import 'package:devates/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.state, super.key});

  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                'https://media.licdn.com/dms/image/D4D03AQE9o2iYhQvtYQ/profile-displayphoto-shrink_400_400/0/1705585711298?e=2147483647&v=beta&t=r_V0EMiLhjUZ5K-ASoFUIfuEAeyzXM7a_Tp6XUOejwA',
                width: 30,
              )),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Momin !',
              style: textBold.copyWith(fontSize: 18),
            ),
            Text(
              'What would like to explore today ?',
              style: textRegular.copyWith(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal)),
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.menu_1)),
        ],
        // centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text(state.topRoute.toString()),
          Center(
            child: ElevatedButton(
                onPressed: () => context.go('/details'),
                child: const Text('Press')),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        label: Row(
          children: [
            const Icon(
              Iconsax.add,
              color: Colors.white,
            ),
            Text(
              'Write New Post',
              style: textBold.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
