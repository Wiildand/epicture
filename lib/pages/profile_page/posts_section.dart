import 'package:epicture/app/color.dart';
import 'package:epicture/app/constant.dart';
import 'package:epicture/models/Account/account_image.dart';
import 'package:epicture/provider/user_connected_provider.dart';
import 'package:epicture/repository/imgur_account_repository.dart';
import 'package:epicture/util/function.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:masonry_grid/masonry_grid.dart';

class PostsSection extends HookConsumerWidget {
  const PostsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    displayer("PostsSection::build", ref.read(userConnectedProvider).getUserConnected().toString());
    return FutureBuilder(
      future: ref.read(imgurAccountRepositoryProvider).getAccountImages(username: AppConstant.imgurAccountUsername),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          AccountImage accountImage = snapshot.data! as AccountImage;

          return MasonryGrid(
            column: 3,
            children: List.generate(
              accountImage.data!.length,
                  (int index) {
                ImageAccountData data = accountImage.data![index];
                return InkWell(
                  onTap: () {
                    displayer("PostsSection::build::FutureBuilder::MasonryGrid:: List.generate::InkWell", data.id.toString());
                    Navigator.pushNamed(context, '/image-with-hash', arguments: (data.id.toString()));
                  },
                  child: SizedBox(
                    width: AppConstant.mainSize.width / 3,
                    height: 100,
                    child: isNotNull(data.link)
                        ? Image.network(data.link!,
                      fit: BoxFit.fill,
                    )
                        : Container(
                      color: AppColor.white,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          final error = snapshot.error!;
          displayer("PostsSection::build::error", error.toString());

          return Center(child: Text(error.toString()));
        } else {
          return const Text('Some error occurred - welp!');
        }
      },
    );
  }
}
