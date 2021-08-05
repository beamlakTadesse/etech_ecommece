import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image(
                height: MediaQuery.of(context).size.height*0.1,
                width:MediaQuery.of(context).size.width,
                image: AssetImage(
                  'assets/images/logo.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: ListTile(
                    leading: Icon(Icons.home,color: Colors.blue,),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){

                  },
                  child: ListTile(
                    leading: Icon(Icons.money,color: Colors.blue,),
                    title: Text(
                      'Income',
                      style: TextStyle(
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){

                  },
                  child: ListTile(
                    leading: Icon(Icons.money_off,color: Colors.blue,),
                    title: Text(
                      'Expense',
                      style: TextStyle(
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){

                  },
                  child: ListTile(
                    leading: Icon(Icons.person,color: Colors.blue,),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){

                  },
                  child: ListTile(
                    leading: Icon(Icons.face,color: Colors.blue),
                    title: Text(
                      'Customers',
                      style: TextStyle(
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){

                  },
                  child: ListTile(
                    leading: Icon(Icons.store,color: Colors.blue,),
                    title: Text(
                      'Stock',
                      style: TextStyle(
                        color:Colors.orange,
                      ),
                    ),
                  ),
                ),
              
              ],
            ),
          )
        ],
      ),
    );
  }
}