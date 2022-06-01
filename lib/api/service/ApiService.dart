import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants/ApiConstants.dart';
import '../model/UserModel.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
/*
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants/ApiConstants.dart';
import '../model/CommentModel.dart';

class ApiService {
  Future<List<CommentModel>?> getComments() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CommentModel> _model = commentModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}*/
/*
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants/ApiConstants.dart';
import '../model/AlbumModel.dart';

class ApiService {
  Future<List<AlbumModel>?> getAlbums() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<AlbumModel> _model = albumModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

}*/
