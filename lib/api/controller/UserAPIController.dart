import 'package:flutter/cupertino.dart';
import 'package:web_app/view/api_view/UserAPIView.dart';

import '../model/UserModel.dart';
import '../service/ApiService.dart';

class UserAPIController extends StatefulWidget {
  const UserAPIController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => UserAPIControllerState();
}

class UserAPIControllerState extends State<UserAPIController> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) => const UserAPIView();
}
