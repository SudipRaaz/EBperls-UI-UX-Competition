import 'package:flutter/material.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.backspace_sharp,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        // fontSize: 35,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Reset Password',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          SizedBox(
            height: 40,
          ),

          // email and passsword arae

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              // height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: Colors.amber,
                  border: Border.all(width: 3, color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.blue.shade100,
                          filled: true,
                          label: Text('Email'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          // button sign in

          GestureDetector(
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => PageLayout()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Container(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 35),
                  child: Center(
                    child: Text(
                      'Request Password',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 120, 186, 240),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),

          // terms and conditions
        ],
      )),
    );
  }
}
