import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:resize/resize.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Resize(
        // allowtextScaling: true,
        builder: () {
      return Scaffold(
        backgroundColor: Colors.grey.shade900,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Image.asset('sha.png', fit: BoxFit.cover,),
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
            padding: const EdgeInsets.fromLTRB(30, 40, 40, 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Field of Study and College", style: TextStyle(fontSize: 15, letterSpacing: 2.0, color: Colors.teal.shade400),),
                  SizedBox(height: 15),
                  Text(
                    "Computing and Information Technologies => RIT Kosovo",
                    style: TextStyle(
                      color: Colors.amber.shade800,
                      letterSpacing: 2.0,
                      fontSize: 20
                    ),
                  ),
                  // SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage(
                            'assets/uni.jpeg'),
                        height: 480.h,
                        width: 100.w,
                      ),
                      SizedBox(width: 30),
                      Image(
                        image: const AssetImage(
                            'assets/pc.webp'),
                        height: 480.h,
                        width: 100.w,
                      ),
                    ],
                  ),
                Image(image: AssetImage('assets/sha.png'),width: 100.w),
                ],
              ),
            )),
      );
    });
  }
}
