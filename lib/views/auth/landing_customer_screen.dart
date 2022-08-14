import 'package:flutter/material.dart';

class LandingCustomerScreen extends StatelessWidget {
  const LandingCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              leading: Text(
                "Create customer's account",
                style: TextStyle(fontSize: 22.0, color: Colors.lightBlue),
              ),
              trailing: Icon(
                Icons.account_box,
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 30.0,
                  ),
                  child: CircleAvatar(
                    radius: 71,
                    backgroundColor: Colors.cyan,
                    child: CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 110,
                  child: RawMaterialButton(
                    elevation: 10,
                    fillColor: Colors.red,
                    child: Icon(Icons.add_a_photo),
                    padding: EdgeInsets.all(15),
                    shape: CircleBorder(),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Choose Option",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.cyan,
                                ),
                              ),
                              content: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    InkWell(
                                      splashColor: Colors.deepPurple,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.camera,
                                              color: Colors.cyan,
                                            ),
                                          ),
                                          Text(
                                            'Camera',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.deepPurple,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.photo,
                                              color: Colors.cyan,
                                            ),
                                          ),
                                          Text(
                                            'Gallery',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.deepPurple,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.remove_circle,
                                              color: Colors.red,
                                            ),
                                          ),
                                          Text(
                                            'Remove',
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            )
            // )
          ],
        ),
      ),
    );
  }
}
