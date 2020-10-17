import 'package:flutter/material.dart';
import 'package:HealthTrackAppUi/coolors.dart';

final imgUrl="https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80";
final imgUrl1="https://images.unsplash.com/photo-1483721310020-03333e577078?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80";
final imgUrl2="https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
final imgUrl3="https://images.unsplash.com/photo-1544033527-b192daee1f5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
// ignore: camel_case_types
class Workout_Page extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color: Colors.white,
      appBar: AppBar(
        backgroundColor: blueish,
        title: Text('Home'),
        //automaticallyImplyLeading: false,
        leading: Icon(Icons.person),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 15.0),
              child: Text("Favourite Workouts",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 15.0),
              child: Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(imgUrl),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(14)
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 20.0,
                          child: Text("Intense Abs",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1
                            ),
                          )
                        )
                      ],
                    ),
                  ), 
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 15.0),
              child: Text("Workouts Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: Container(
                height: 180.0,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                  itemBuilder: (context,index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                            children: <Widget>[
                              Container(
                                //height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(imgUrl3),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(14)
                                ),
                              ),
                              Align(
                                child: Text("HIIT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    letterSpacing: 1
                                  ),
                                )
                              )
                            ],
                          ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 15.0),
              child: Text("Try Something New",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 15.0),
              child: Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context,index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(imgUrl2),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(14)
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 20.0,
                          child: Text("Work Hard",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1
                            ),
                          )
                        )
                      ],
                    ),
                  ), 
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blueish,
        fixedColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        //selectedItemColor: whiteColor,
        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.person_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Workouts',
            icon: Icon(Icons.hardware),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: Icon(Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: 'Contacts',
            icon: Icon(Icons.people),
          ),
        ]
      ),
    );
  }
}
