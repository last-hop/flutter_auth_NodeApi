import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:auth_public_api/utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
// declaring github free api  url to fetch data
// we use State management to setup a secure and stable connection
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
//below build declare all the frontend of home layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("#7393B3"),
              hexStringToColor("#71797E"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 50, 0.8, 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          onChanged: (value) {
                            fetchGitHubUsers(value);
                          },
                          decoration: InputDecoration(
                            hintText: 'Search GitHub users',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Perform search operation here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text('Search'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(users[index]['avatar_url']),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            users[index]['login'],
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

