import 'package:flutter/material.dart';
import 'package:shop_here/views/auth/constants.dart';

class LandingCustomerScreen extends StatelessWidget {
  const LandingCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
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
                                      onTap: () {},
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
                                            style: KcircleTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
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
                                            style: KcircleTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
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
                                            style: KcircleTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //email = value;
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter Full Name'),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //email = value;
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 18.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'login',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
