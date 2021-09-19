// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mi_card/api_service/api_services.dart';
import 'package:mi_card/models/owner_model.dart';
import 'package:mi_card/card/resume_card.dart';



class CvScreen extends StatefulWidget {
  @override
  _CvScreenState createState() => _CvScreenState();
}

class _CvScreenState extends State<CvScreen> {
  ServiceApi client = ServiceApi();


  @override
  void initState() {
    // getData();// TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.restaurant_menu,
                color: Colors.black54,
              ),
              SizedBox(width: 5.0),
              Text(
                "Cv.Cook",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 18.0,
                    color: Colors.black87),
              ),
            ],
          )),
      backgroundColor: Colors.grey,
      body: FutureBuilder(
        future: client.getResume(),
        builder: (BuildContext context, AsyncSnapshot<List<Owner>> snapshot) {
          if (snapshot.hasData) {
            List<Owner> resume = snapshot.data;
            return ListView.builder(
                itemCount: resume.length,
                itemBuilder: (context, index) {
                  return RepoCard(
                      ownerName: resume[index].ownerName ,
                    ownerDescription: resume[index].ownerDescription,
                    imageUrl: resume[index].imageUrl,
                      website: resume[index].website,
                      projects: resume[index].projects,
                      employment: resume[index].employment
                  );

                }
                );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}


