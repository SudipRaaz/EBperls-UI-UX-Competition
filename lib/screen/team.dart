import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.only(top: 14.0),
            child: Center(
                child: Text(
              "Team",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 280,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/logo_ebpearls.png'))),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'This Work is in \n progress',
              style: TextStyle(fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
