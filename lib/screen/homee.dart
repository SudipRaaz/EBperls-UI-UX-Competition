import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Home',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 31,
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/image/logo_ebpearls.png'))),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  // alignment: ,
                  child: Text(
                    'Award-winning \n digital agency',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFCD06),
                        borderRadius: BorderRadius.circular(16)),
                    height: 170,
                    width: 170,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.book,
                            size: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '3400+',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Projects',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'delivered',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFCD06),
                        borderRadius: BorderRadius.circular(16)),
                    height: 170,
                    width: 170,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.web,
                            size: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '180+',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Developers',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // second row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFCD06),
                        borderRadius: BorderRadius.circular(16)),
                    height: 170,
                    width: 170,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.timelapse,
                            size: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '15+',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Yeras in ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Operation',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFCD06),
                        borderRadius: BorderRadius.circular(16)),
                    height: 170,
                    width: 170,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Icon(
                            Icons.emoji_emotions_outlined,
                            size: 60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '68+',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'International',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'awards',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0x357D8390),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
