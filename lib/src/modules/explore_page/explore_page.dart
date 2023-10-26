import 'package:dummy_online_store/src/global_widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  Future<bool> onWillPop(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return const AlertDialog(
          title: Text("No Road!!!!!!"),
          content: Text("Please naaa"),
        );
      },
    );
    // Future.delayed(
    //   const Duration(seconds: 1),
    //   () => Navigator.pop(context),
    // );

    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)!.settings.arguments as Map;
    return AppScaffold(
      appBar: AppBar(
        title: const Text("Explore"),
      ),
      body: WillPopScope(
        onWillPop: () async => onWillPop(context),
        child: Center(
          child: Text(params["foo"] ?? "Nothing"),
        ),
      ),
    );
  }
}
