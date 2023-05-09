import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webpoint_test/core/configs/spacing_size.dart';
import 'package:webpoint_test/core/configs/style/text_styles.dart';
import 'package:webpoint_test/core/widgets/button/primary_btn.dart';
import 'package:webpoint_test/core/widgets/form_widget/drop_down_field.dart';
import 'package:webpoint_test/core/widgets/form_widget/form_field_widget.dart';
import 'package:webpoint_test/features/homepage/models/request/post_request_model.dart';
import 'package:webpoint_test/features/homepage/provider/posts_provider.dart';
import 'package:webpoint_test/features/homepage/provider/user_provider.dart';

class AddPostWidget extends HookConsumerWidget {
  const AddPostWidget({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userProvider).userId;

    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          left: 16,
          right: 16,
          top: 16),
      child: FormBuilder(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Post",
              style: AppTextStyle.heading5,
            ),
            Spacing.sizedBoxH_16(),
            const FormFieldWidget(
              name: "title",
              labelText: "Title",
            ),
            const FormFieldWidget(
              labelText: "Description",
              name: "description",
            ),
            DropDownField<int>(
              name: "users",
              labelText: "Select User",
              validator: (value) {
                if (value == 0) {
                  return "Please select User";
                }
                return null;
              },
              items: [
                const DropdownMenuItem(
                  value: 0,
                  child: Text(
                    "SELECT USER",
                  ),
                ),
                ...users
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList()
              ],
              initialValue: 0,
            ),
            Spacing.sizedBoxH_08(),
            PrimaryButton(
              text: "Save",
              func: () {
                if (formKey.currentState!.validate()) {
                  ref.read(postProvider.notifier).add(
                        PostRequestModel(
                          description:
                              formKey.currentState!.fields["title"]!.value,
                          title: formKey
                              .currentState!.fields["description"]!.value,
                          userId: formKey.currentState!.fields["users"]!.value,
                        ),
                      );
                  context.router.pop();
                }
              },
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
