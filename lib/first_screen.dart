import 'package:dashboard_app/graph_firstscreen.dart';
import 'package:dashboard_app/line_chart.dart';
import 'package:flutter/material.dart';
class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF020147),
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF020147),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,bottom: 10, right:20),
            child: Container(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 50,

                        ),
                      ),
                    ),
                  ),
                  Text("Manaahil Adil",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),)
                ],
              ),
              width: 350,
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white54, // Border color
                  width: 2.0, // Border width
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 100,
             width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                   "Messages(5)",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    width: 100,
                    color: Colors.red,

                    child: Center(
                      child: Text(
                        "Check",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white54, // Border color
                width: 2.0, // Border width
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 25, left: 20, right: 20),
                    child: linechart(),
                  ),
                ),
                width: 350,
                height: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white54, // Border color
                    width: 2.0, // Border width
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: () {
              // Navigate to the next page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => graph()),
              );
            },
            child: Container(
              height: 40,
              width: 200,
              color: Colors.deepPurpleAccent,

              child: Center(
                child: Text(
                  "View Your Data",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
