import 'package:flutter/material.dart';
import 'homepage.dart';

class login_details extends StatefulWidget {
  const login_details({super.key});

  @override
  State<login_details> createState() => _login_detailsState();
}

class _login_detailsState extends State<login_details> {
  final _formkey = GlobalKey<FormState>();
  String ? _firstName;
  String ? _lastName;
  String ? _phoneNumber;
  String ? _age;
  String ? _email;
  TextEditingController _controllerpassword=TextEditingController();
  TextEditingController _controllerconfirmation=TextEditingController();
  var button=Icon(Icons.visibility);
  bool textvisibility=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2,
              )),
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.9,
          padding:const  EdgeInsets.all(20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
             const  Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/studentlogin.jpg'),
                ),
              ),
              const Center(
                child: Text(
                  'Student Login',
                  style: TextStyle(
                      color: Color.fromRGBO(28, 102, 19, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
             const SizedBox(
                height: 20,
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        style:const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: const Text(
                            'enter your first name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'first name cannot be blank';
                          }
                          if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value)){
                            return 'enter a valid first name';
                          }
                          if(value.length<3){
                            return 'firstname should be atleast 3 characters';
                          }
                          
                          return null;
                        },
                       onSaved: (value) {
                         _firstName=value;
                       },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: const Text(
                            'enter your last name',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'lastname cannot be blank';
                          }
                          if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value)){
                            return 'enter a valid last name';
                          }
                          
                          
                          return null;
                        },
                        onSaved: (value) {
                          _lastName=value;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label:const Text(
                            'enter your age',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'age cannot be blank';
                          }
                          if(!RegExp(r'^(1[8-9]|[2-9][0-9]|100)$').hasMatch(value)){
                            return 'invalid age!!!';
                          }
                          return null;
                        },
                         onSaved: (value) {
                           _age=value;
                         },
                      ),


                      const SizedBox(height:10 ,),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: const Text(
                            'enter your email id',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'mail id cannot be blank';
                          }
                          if(!RegExp(r'^[a-zA-Z0-9._%+-]{4,}@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)){
                            return 'enter a valid mail id';
                          }
                          return null;
                        },
                         onSaved: (newValue) {
                          _email=newValue;
                         },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label:const Text(
                            'enter your phone number',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'phone number cannot be blank';
                          }
                          if(!RegExp(r'^\d{10}$').hasMatch(value)){
                            return 'enter a valid phone number';
                          }
                          return null;
                        },
                         onSaved: (newValue) {
                           _phoneNumber=newValue;
                         },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _controllerpassword,
                        obscureText: false,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: const Text(
                            'enter your password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter a password';
                          }
                          if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$',).hasMatch(value)){
                            return 'enter a valid password';
                          }
                          return null;
                              
                        },
                         onSaved: (newValue) {
                          
                         },
                        
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _controllerconfirmation,
                        obscureText: textvisibility,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(button==const Icon(Icons.visibility_off)){
                              button=const Icon(Icons.visibility);
                            }else{
                              button=const Icon(Icons.visibility);
                            }
                            if(textvisibility==true){
                              textvisibility=false;
                            }else{
                              textvisibility=true;
                            }
                            
                          });
                        }, icon: button),
                          border: OutlineInputBorder(
                            borderSide:const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: const Text(
                            'confirm your password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          prefix: const Icon(Icons.lock,
                          color: Colors.white,
                          size: 18,
                          )
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter a password';
                          }
                          if(value !=_controllerpassword.text){
                            return 'passwords do not match';
                          }
                          return null;
                        },
                         
                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.green.shade900,
                          ),
                          foregroundColor: const MaterialStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: (){
                          if(_formkey.currentState?.validate()==true){
                            print('form submitted');
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return homepage();
                            }));
                             }
                        },
                         child: const Text('Submit'))
                    ],
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
