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
                Card(
                  elevation: 1,
                  child:InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        'Home'
                      ),
                    ),
                  ),
                ),

                Card(
                  elevation: 1,
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: Icon(Icons.money),
                      title: Text(
                        'Income'
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: Icon(Icons.money_off),
                      title: Text(
                        'Expense'
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Profile'
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: Icon(Icons.face),
                      title: Text(
                        'Customers'
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      leading: Icon(Icons.store),
                      title: Text(
                        'Stock'
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