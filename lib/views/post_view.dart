import '../config.dart';
import '../models/builders/post_builder.dart';
import '../presenters/post_presenter.dart';
import './helpers/post_helper.dart';

void main() async {
  const host = Config.host;
  final url = '$host/posts/1';
  final postPresenter = PostPresenter();

  print('--------------------------------');
  try {
    final post = mapperPost(await procesarRequest(postPresenter.fetchPost, url));

    print('Post Title: ${post.getTitle}');
    print('--------------------------');
    print('Post Body: ${post.getBody}');
  } catch (e) {
    print('Error: $e');
  }

  print('--------------------------------');
  uriEntender(url);
}