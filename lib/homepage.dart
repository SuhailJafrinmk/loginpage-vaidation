import 'dart:ui';

import 'package:flutter/material.dart';


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
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                
              },
              textColor: textcolour,
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/angular.png'),
              ),
              title: const Text('angular'),
            ),
            Divider(color: dividerColor,),
            ListTile(
              textColor: textcolour,
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/cyber.jpg'),
              ),
              title: const Text('cyber security'),
            ),
            Divider(
            color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading:const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/flutter.png'),
              ),
              title:const Text('flutter'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/java.jpg'),
              ),
              title:const  Text('java devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/mean.jpg'),
              ),
              title: const Text('mean stack devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/mern.png')),
              title:const Text('mern stack devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/Python.png',
                
                ),
              ),
              title: const Text('python-django devolepment'),
            ),
            Divider(
              color: dividerColor,
            ),
            ListTile(
              textColor: textcolour,
              leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/React.png')),
              title: const Text('front-end devolepment using react'),
            ),
          ],
        ),
      ),
    );
  }
}
