import 'package:epicture/repository/imgur_account_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: TextButton(
        onPressed: () {
          ref.read(imgurAccountRepositoryProvider).logout();
          Navigator.pushReplacementNamed(context, '/connexion');
        },
        child: const Text("Logout"),
      ),
    );
  }
}
