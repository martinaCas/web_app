/*import 'package:flutter/material.dart';

import '../../api/model/CommentModel.dart';
import '../../api/service/ApiService.dart';

class CommentAPIView extends StatefulWidget {
  const CommentAPIView({Key? key}) : super(key: key);

  @override
  _CommentAPIViewState createState() => _CommentAPIViewState();
}

class _CommentAPIViewState extends State<CommentAPIView> {
  late List<CommentModel>? _commentModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _commentModel = (await ApiService().getComments())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API User Example'),
      ),
      body: _commentModel == null || _commentModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _commentModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_commentModel![index].postId.toString()),
                          Text(_commentModel![index].id.toString()),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_commentModel![index].name),
                          Text(_commentModel![index].email),
                          Text(_commentModel![index].body),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
*/