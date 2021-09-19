import 'package:flutter/material.dart';

class RepoCard extends StatelessWidget {
  final String imageUrl;
  final String ownerName;
  final String website;
  final String projects;
  final String employment;
  final String ownerDescription;

  RepoCard(
      {this.ownerName,
      this.ownerDescription,
      this.imageUrl,
      this.website,
      this.projects,
      this.employment});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage('$imageUrl'),
          ),
        ),
        Text(
          '$ownerName',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
          child: Text(
            '$ownerDescription',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.black87,
              fontSize: 14.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
          width: 150.0,
          child: Divider(
            color: Colors.teal.shade600,
          ),
        ),
        Container(
          child: Column(
            children: [
              Card(
                  color: Colors.white70,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.sports_basketball,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'Website :$website',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  )),
              Card(
                  color: Colors.white70,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.work_rounded,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '$employment',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0,
                      ),
                    ),
                  )),
              Card(
                  color: Colors.white70,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.precision_manufacturing_outlined,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'Projects: $projects',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
