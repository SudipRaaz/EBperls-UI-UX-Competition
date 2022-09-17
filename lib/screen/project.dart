import 'package:flutter/material.dart';
import 'package:itmeet/model/resources.dart';
import 'package:itmeet/phase3/baxtapet_page.dart';

class Project extends StatelessWidget {
  Project({super.key});

  Resources obj = new Resources();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 14.0),
              child: Center(
                  child: Text(
                "Projects",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: TextFormField(
                cursorHeight: 20,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(147, 88, 88, 88),
                    ),
                    // errorText: 'Email can not be null',
                    fillColor: Color(0x257D8390),
                    filled: true,
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      // borderSide: BorderSide(color: Colors.grey)
                    )),
              ),
            ),
            Container(
              height: 638,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PetPage(image: obj.assetlist[index])));
                    },
                    child: setbox(
                        assetname: obj.assetlist[index],
                        name: obj.namelist[index],
                        title: obj.titlelist[index]),
                  );
                },
                itemCount: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class setbox extends StatelessWidget {
  setbox({
    super.key,
    required this.assetname,
    required this.name,
    required this.title,
  });

  String assetname;
  String name;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 290,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(assetname))),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 8),
        child: Text(
          name,
          style: TextStyle(fontSize: 21),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 21, color: Color(0xf97D8390)),
        ),
      ),
      SizedBox(
        height: 15,
      )
    ]);
  }
}
