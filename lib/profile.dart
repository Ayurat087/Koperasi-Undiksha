import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key); // Corrected line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Profil Saya",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(Icons.people, color: Colors.white,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 30),
            width: double.infinity,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage("https://cors-anywhere.herokuapp.com/https://dosen.undiksha.ac.id/admin/media/ujm/dosen/0801128402/0801128402_photo_profile.jpg"),
            ),
          ),
          Text("AYU RAT RESMI ARDHA SWARI", 
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 30
            ),
          ),
          Text("Sistem Informasi - Undiksha", 
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(50),
              shrinkWrap: true,
              crossAxisSpacing: 20,
              mainAxisSpacing: 40,
              crossAxisCount: 2,
              children: <Widget>[
                Container(height: 5, width: 5, color: Colors.red,),
                Container(height: 5, width: 5, color: Colors.blue,),
                Container(height: 5, width: 5, color: Colors.green,),
                Container(height: 5, width: 5, color: Colors.purple,),
              ],
            ),
          )
        ],
      ),
    );
  }
}