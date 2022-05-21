import 'package:epicture/app/color.dart';
import 'package:epicture/app/constant.dart';
import 'package:epicture/models/Account/account_base.dart';
import 'package:epicture/repository/imgur_account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileBannerSection extends HookConsumerWidget {
  const ProfileBannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountBase = ref.watch(imgurAccountRepositoryProvider).getAccountBase(AppConstant.imgurAccountUsername);

    return FutureBuilder(
      future: accountBase,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SizedBox(
            width: AppConstant.mainSize.width,
            height: AppConstant.mainSize.height / 13,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasData) {
          AccountBase accountBase = snapshot.data! as AccountBase;

          return Stack(
            children: [
              _buildBackground(accountBase.cover!),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 50.sp),
                    child: _buildRowOfMainInformation(accountBase),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50.sp),
                    child: _buildRowOfSecondaryInformation(accountBase),
                  ),
                ],
              )
            ],
          );
        } else if (snapshot.hasError) {
          final error = snapshot.error!;
          return SizedBox(
            width: AppConstant.mainSize.width,
            height: AppConstant.mainSize.height / 13,
            child: Center(
              child: Text(
                error.toString(),
              ),
            ),
          );
        } else {
          return const Text('Some error occurred - welp!');
        }
      },
    );
  }

  Widget _buildBackground(String backgroundUrl) => SizedBox(
        width: AppConstant.mainSize.width,
        height: AppConstant.mainSize.height / 13,
        child: Image.network(
          backgroundUrl,
          fit: BoxFit.fitWidth,
        ),
      );

  Widget _buildRowOfMainInformation(AccountBase accountBase) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 50.sp, top: 50.sp),
            child: ClipOval(
              child: Image.network(
                accountBase.avatar!,
                height: 140.sp,
                width: 140.sp,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Icon(
                        accountBase.reputation! < 0 ? Icons.arrow_downward : Icons.arrow_upward,
                        color: accountBase.reputation! < 0 ? AppColor.red : AppColor.green,
                        size: 90.sp,
                      ),
                    ),
                    Text(accountBase.reputation.toString()),
                  ],
                ),
                const Text("Reputation"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Icon(
                        accountBase.reputationName! == "Neutral"
                            ? Icons.sentiment_neutral_outlined
                            : accountBase.reputationName! == "Hai"
                                ? Icons.mood_bad_outlined
                                : Icons.mood_outlined,
                        color: accountBase.reputationName! == "Neutral"
                            ? AppColor.grey
                            : accountBase.reputationName! == "Hai"
                                ? AppColor.red
                                : AppColor.green,
                        size: 90.sp,
                      ),
                    ),
                    Text(accountBase.reputationName!),
                  ],
                ),
                const Text("reputation name"),
              ],
            ),
          ),
        ],
      );

  Widget _buildRowOfSecondaryInformation(AccountBase accountBase) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(accountBase.url!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(accountBase.bio!),
                ],
              ),
            ],
          ),
        ],
      );
}
