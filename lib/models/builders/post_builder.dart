import '../dtos/post_dto.dart';
import '../post_model.dart';

class PostDtoBuilder {
  late String _title;
  late String _body;

  PostDtoBuilder setTitle(String title) {
    _title = title;
    return this;
  }

  PostDtoBuilder setBody(String body) {
    _body = body;
    return this;
  }

  PostDto build() {
    return PostDto(_title, _body);
  }
}

PostDto mapperPost(Post data) =>
    PostDtoBuilder().setTitle(data.title).setBody(data.body).build();