import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json["userId"],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class NetworkPage extends StatefulWidget {
  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  final Future<Post> post = fetchPost();

  static Future<Post> fetchPost() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/posts/2");
    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veri çekme"),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: post,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      text: "",
                      children: <TextSpan>[
                        TextSpan(
                            text: snapshot.data.id.toString(),
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.red,
                            )),
                        TextSpan(
                            text: snapshot.data.title.toUpperCase(),
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black)),
                        TextSpan(
                          text: snapshot.data.body,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
