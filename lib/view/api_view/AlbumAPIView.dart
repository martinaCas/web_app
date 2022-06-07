/*import 'package:flutter/material.dart';
import 'package:web_app/api/service/ApiService.dart';

import '../../api/model/AlbumModel.dart';

class AlbumAPIView extends StatefulWidget {
  const AlbumAPIView({Key? key}) : super(key: key);

  @override
  _AlbumAPIViewState createState() => _AlbumAPIViewState();
}

class _AlbumAPIViewState extends State<AlbumAPIView> {
  late List<AlbumAPIView>? _albumModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _albumModel = (await ApiService().getAlbums())!.cast<AlbumAPIView>();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API User Example'),
      ),
      body: _albumModel == null || _albumModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _albumModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_albumModel![index]. id.toString()),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_albumModel![index].userId),
                          Text(_albumModel![index].title),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}*/
