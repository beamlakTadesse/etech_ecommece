import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        HomeCard(),
        HomeCard(),
        HomeCard(),
        HomeCard(),
        HomeCard(),
        HomeCard(),
        HomeCard(),
        HomeCard(),
      ],
    );
  }
}



class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){

        },
        child: Container(
          width: 410.0,
          height: 120,
          margin: EdgeInsets.all(10),
          child: Card(
            elevation: 1,
            child: Column(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.storage,
                      color: Colors.black45,
                    ),
                    Column(
                      children: [
                        Text(
                          "some thing some thing ",
                          style: TextStyle(
                            color: Colors.blue[300]
                          ),
                        ),
                        Text(
                          "some thing some thing ",
                          style: TextStyle(
                            color: Colors.blue[300]
                          ),
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios,
                    color: Colors.black45,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment:Alignment.bottomRight,
                  child: Text(
                    'Date 24/23/32',
                    style: TextStyle(
                      color: Colors.orange
                    ),
                  ),
                )
              ],
            ),
          ),
        
        ),
      );
  }
}