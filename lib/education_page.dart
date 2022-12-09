import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:resize/resize.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Resize(
        allowtextScaling: true,
        builder: () {
          return Scaffold(
            backgroundColor: Colors.grey.shade900,
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.amber.shade900,
                    ),
                    child: Text("Drawer Header"),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  ListTile(
                    title: const Text("Education"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/education');
                    },
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: const Text('Shpend ID Card'),
              centerTitle: true,
              backgroundColor: Colors.amber.shade900,
              elevation: 0.0,
            ),
            body: Padding(
                padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                child:  SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "I study Computing and Information Technologies at RIT Kosovo",
                        style: TextStyle(
                          color: Colors.amber.shade800,
                          letterSpacing: 2.0,
                          fontSize: 2.0.rem
                        ),
                      ),
                      // SizedBox(height: 1.vh),
                      Image(
                       image: const NetworkImage(
                            'https://images.pexels.com/photos/11276645/pexels-photo-11276645.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        width: 120.vw,
                        height: 120.vh,
                      ),
                      Row(

                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
