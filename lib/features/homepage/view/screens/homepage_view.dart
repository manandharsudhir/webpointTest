import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webpoint_test/core/configs/spacing_size.dart';
import 'package:webpoint_test/core/configs/style/text_styles.dart';
import 'package:webpoint_test/core/widgets/custom_error_widget.dart';
import 'package:webpoint_test/features/homepage/provider/posts_provider.dart';
import 'package:webpoint_test/features/homepage/view/widgets/add_post_widget.dart';
import 'package:webpoint_test/features/homepage/view/widgets/post_item_widget.dart';

class HomepageView extends HookConsumerWidget {
  HomepageView({super.key});

  final formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsState = ref.watch(postProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Posts",
          style: AppTextStyle.heading5,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              )),
              builder: (context) => AddPostWidget(
                    formKey: formKey,
                  ));
        },
        label: const Text("Add Post"),
        icon: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: postsState.when(
            data: (data) {
              return RefreshIndicator(
                onRefresh: () {
                  ref.read(postProvider.notifier).refresh();
                  return Future.value();
                },
                child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) {
                      final post = data[index];
                      return PostItemWidget(post: post);
                    },
                    separatorBuilder: (context, index) =>
                        Spacing.sizedBoxH_08(),
                    itemCount: data.length),
              );
            },
            error: (e, st) {
              return CustomErrorWidget(
                errorMsg: e.toString(),
                onBtnTapped: () {
                  ref.read(postProvider.notifier).refresh();
                },
              );
            },
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )),
      ),
    );
  }
}
