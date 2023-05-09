import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webpoint_test/core/models/exceptions/network_exception.dart';
import 'package:webpoint_test/core/widgets/toast/toast.dart';
import 'package:webpoint_test/features/homepage/models/request/post_request_model.dart';
import 'package:webpoint_test/features/homepage/models/response/post_model.dart';
import 'package:webpoint_test/features/homepage/provider/user_provider.dart';
import 'package:webpoint_test/features/homepage/repo/posts_repo_impl.dart';

final postProvider =
    StateNotifierProvider<PostProvider, AsyncValue<List<PostModel>>>(
        (ref) => PostProvider(ref));

class PostProvider extends StateNotifier<AsyncValue<List<PostModel>>> {
  PostProvider(this.ref) : super(const AsyncLoading()) {
    getPosts();
  }

  final Ref ref;

  AsyncValue<List<PostModel>>? previousState;

  Future getPosts() async {
    try {
      final response = await ref.read(postsRepoImplProvider).getPosts();
      ref.read(userProvider).setUserFromPosts(response);
      state = AsyncData(response);
    } on NetworkExceptions catch (e, st) {
      state = AsyncError(e.errorMessage, st);
    } catch (e, st) {
      state = AsyncError(e.toString(), st);
    }
  }

  Future<void> add(PostRequestModel postRequestModel) async {
    _cacheState();
    state = const AsyncLoading();
    try {
      final response = await ref
          .read(postsRepoImplProvider)
          .postPosts(postRequestModel.toJson());
      log(response.toString());
      showSuccessToast("Post Added Successfully");
      if (previousState != null) {
        state = AsyncData([response, ...previousState!.value!]);
      } else {
        state = AsyncData([response]);
      }
    } on NetworkExceptions catch (e) {
      _resetState();
      showErrorToast(e.errorMessage);
    } catch (e) {
      _resetState();
      showErrorToast(e.toString());
    }
  }

  void _cacheState() {
    previousState = state;
  }

  void _resetState() {
    if (previousState != null) {
      state = previousState!;
      previousState = null;
    }
  }

  void refresh() async {
    _cacheState();
    state = const AsyncLoading();
    try {
      final response = await ref.read(postsRepoImplProvider).getPosts();
      ref.read(userProvider).setUserFromPosts(response);
      state = AsyncData(response);
    } on NetworkExceptions catch (e) {
      showErrorToast(e.errorMessage.toString());
      _resetState();
    } catch (e) {
      showErrorToast(e.toString());
      _resetState();
    }
  }
}
