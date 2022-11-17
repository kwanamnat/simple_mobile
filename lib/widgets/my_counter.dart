import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_mobile/states/couter_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyCounter extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterStateProvider);
    return Text("$counter");
  }
}
