import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:itmeet/model/R_baxtapet.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../tabmanager.dart';

class PetPage extends StatefulWidget {
  PetPage({required this.image, super.key});

  String image;

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  R_baxtapet obj = new R_baxtapet();

  final Uri _url = Uri.parse('https://ebpearls.com.au/');

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager, child) {
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
                  'Baxta Pets',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 285,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.image))),
              ),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. ',
                  style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'Client :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 12),
                child: Text(
                  'Baxta global ply limited',
                  style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'Industry :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 12),
                child: Text(
                  'Social Media And Networking (Pets and Animals)',
                  style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'Project Type :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 12),
                child: Text(
                  'Baxta (IOS and CMS)',
                  style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // bottom technology
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'Technology Used ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              // tiles ********
              Container(
                height: 150,
                width: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Tiles(
                        logo: obj.logolist[index], name: obj.namelist[index]);
                  }),
                  itemCount: 6,
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  'Website :',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () => _launchUrl,
                child: const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'www.ebperl.com.au',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  tabManager.goToTab(4);
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => Contacts()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Container(
                    height: 50,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFFCD06)),
                    child: const Center(
                        child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                      ),
                    )),
                  ),
                ),
              ),

              const SizedBox(
                height: 100,
              ),
            ],
          ),
        )),
      );
    });
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

class Tiles extends StatelessWidget {
  Tiles({super.key, required this.logo, required this.name});

  String logo;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('$logo'))),
          ),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 15, fontFamily: 'Poppins'),
        ),
      ],
    );
  }
}
