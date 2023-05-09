import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webpoint_test/core/constants/api_constants.dart';
import 'package:webpoint_test/core/services/network/base_client.dart';
import 'package:webpoint_test/features/homepage/models/response/post_model.dart';
import 'package:webpoint_test/features/homepage/repo/posts_repo.dart';

final postsRepoImplProvider =
    Provider((ref) => PostsRepoImplProvider(ref: ref));

class PostsRepoImplProvider extends PostsRepo {
  final Ref ref;
  PostsRepoImplProvider({required this.ref});
  @override
  Future<List<PostModel>> getPosts() async {
    try {
      final response =
          await ref.read(baseClientProvider).get(ApiConstants.getPosts);
      return (response as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<PostModel> postPosts(Map<String, dynamic> post) async {
    try {
      final response = await ref
          .read(baseClientProvider)
          .post(ApiConstants.getPosts, data: post);
      return PostModel.fromJson(response);
    } catch (_) {
      rethrow;
    }
  }
}
