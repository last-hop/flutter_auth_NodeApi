import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];

  Future<void> fetchGitHubUsers(String searchTerm) async {
    final response = await http.get(
      Uri.parse('https://api.github.com/search/users?q=$searchTerm'),
    );

    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body)['items'];
      });
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Users'),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                fetchGitHubUsers(value);
              },
              decoration: InputDecoration(
                hintText: 'Search GitHub users',
                prefixIcon: Icon(Icons.search),
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.3),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(width: 0, style: BorderStyle.none)),

              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(users[index]['avatar_url']),
                  ),
                  title: Text(users[index]['login']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
