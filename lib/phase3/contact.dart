import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 2.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // back button
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 5),
                child: Row(
                  children: const [
                    Icon(
                      CupertinoIcons.back,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),

            // contend part
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Contact Us',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 115, 188, 249))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                        },
                        decoration: InputDecoration(
                            // errorText: 'Email can not be null',
                            fillColor: Colors.blue.shade100,
                            filled: true,
                            hintText: ('First Name *'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          // obscureText: _isObscure,
                          decoration: InputDecoration(
                        fillColor: Colors.blue.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Last Name *',
                      )),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          // obscureText: _isObscure,
                          decoration: InputDecoration(
                        fillColor: Colors.blue.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Email',
                      )),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                          // obscureText: _isObscure,
                          decoration: InputDecoration(
                        fillColor: Colors.blue.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Mobile Number *',
                      )),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            // bottom technology
            const Padding(
              padding: EdgeInsets.only(right: 12.0, left: 12),
              child: Text(
                'For a FREE consultation, simply leave your details  and we’ll contact you soon. ',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/image/ic_telephone.png'))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      '02 8880 7857',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            // tiles ********

            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Container(
                height: 50,
                width: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffFFCD06)),
                child: Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                  ),
                )),
              ),
            ),

            const SizedBox(
              height: 100,
            ),
          ],
        ),
      )),
    );
  }
}
