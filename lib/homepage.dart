import 'package:flutter/material.dart';
import 'login_page.dart';

class homepage extends StatelessWidget {
  homepage({super.key});
  var mainTheme = Color.fromRGBO(28, 102, 19, 1);
  var textcolour = Colors.white;
  var dividerColor=Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'select your course',
          style: TextStyle(
            color: textcolour,
            fontFamily:'customFont',
          ),
        ),
        backgroundColor: mainTheme,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                
              },
              textColor: textcolour,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/angular.png'),
              ),
              title: Text('angular'),
            ),
            Divider(color: dividerColor,),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/cyber.jpg'),
              ),
              title: Text('cyber security'),
            ),
            Divider(
            color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/flutter.png'),
              ),
              title: Text('flutter'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/java.jpg'),
              ),
              title: Text('java devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/mean.jpg'),
              ),
              title: Text('mean stack devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/mern.png')),
              title: Text('mern stack devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/Python.png',
                
                ),
              ),
              title: Text('python-django devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/React.png')),
              title: Text('front-end devolepment using react'),
            ),
          ],
        ),
      ),
    );
  }
}
