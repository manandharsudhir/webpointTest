import 'package:webpoint_test/features/homepage/models/response/post_model.dart';

abstract class PostsRepo {
  Future<List<PostModel>> getPosts();
  Future<PostModel> postPosts(Map<String, dynamic> post);
}
