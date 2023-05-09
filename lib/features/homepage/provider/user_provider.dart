import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webpoint_test/features/homepage/models/response/post_model.dart';

final userProvider = ChangeNotifierProvider((ref) => UserProvider());

class UserProvider extends ChangeNotifier {
  Set<int> userId = {};

  setUserFromPosts(List<PostModel> posts) {
    userId = posts.map((e) => e.userId).toSet();
    notifyListeners();
  }
}
