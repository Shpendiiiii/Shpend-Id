import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'education_page.dart';
import 'package:resize/resize.dart';
import 'package:footer/footer_view.dart';
import 'package:footer/footer.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => ShpendCard(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/education': (context) => const Education(),
    },
  )
  );
}


class ShpendCard extends StatefulWidget {


  @override
  State<ShpendCard> createState() => _ShpendCardState();
}

class _ShpendCardState extends State<ShpendCard> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset('sha.png', fit: BoxFit.cover,)
            ),
            ListTile(
              title: const Text('Home'), onTap: (){ Navigator.pop(context);
              Navigator.pushNamed(context, '/')
            ;},
            ),
            ListTile(
              title: const Text("Education"), onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/education');
            },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Shpend ID Card'),
        centerTitle: true,
        backgroundColor: Colors.amber.shade900,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/comments-python.jpg'),
                  radius: 55.0,
                ),
              ),
              Divider(height: 60, color: Colors.amber,),
              const Text('NAME',  style: TextStyle(color: Colors.white, letterSpacing: 2.0),),
              SizedBox(height: 10.0),
              const Text('Shpend Aliu',  style: TextStyle(color: Colors.amber, letterSpacing: 2.0, fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text('Education',  style: TextStyle(color: Colors.white, letterSpacing: 2.0),),
              Text('CIT @ RIT',  style: TextStyle(color: Colors.amber, letterSpacing: 2.0, fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  SizedBox(width: 15.0,),
                  Text(
                    'shpendaliu@pm.me',
                    style: TextStyle(
                        color: Colors.amber,
                        letterSpacing: 2.0
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              Text("you have clicked the floating action button: ",
                  style:
                  TextStyle(color: Colors.white, letterSpacing: 2.0)
              ),
              SizedBox(height: 15.0,),
              Text("$counter times", style: TextStyle(color: Colors.amber, letterSpacing: 2.0),),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counter += 1;
        });
      }, child: Icon(CupertinoIcons.add), backgroundColor: Colors.amber,
      ),
    );
  }
}


