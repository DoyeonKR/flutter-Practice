// secret_board_screen.dart
import 'package:flutter/material.dart';

class SecretBoardScreen extends StatelessWidget {
  // 예시를 위한 몇 개의 게시글 데이터
  final List<Post> posts = [
    Post('게시글 1', '내용 1...'),
    Post('게시글 2', '내용 2...'),
    Post('게시글 3', '내용 3...'),
    // 여기에 더 많은 게시글을 추가할 수 있습니다.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비밀 게시판'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(posts[index].title),
              subtitle: Text(posts[index].content),
              onTap: () {
                // 여기에 게시글 탭 시 상세 페이지로 이동하는 로직을 추가할 수 있습니다.
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // 여기에 새 게시글 작성 페이지로 이동하는 로직을 추가할 수 있습니다.
        },
      ),
    );
  }
}

// post.dart
class Post {
  final String title;
  final String content;

  Post(this.title, this.content);
}
