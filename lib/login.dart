import 'package:app/sign_in.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,
      appBar:AppBar (backgroundColor:
      Colors.purple,
        title: Text('Login Screen',),
        leading:
        IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: Icon(Icons.menu_outlined)
          ,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (String value){
                print(value);
              },
              onChanged: (String value){
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Email Address' ,
                border:OutlineInputBorder(),
                icon: Icon(Icons.mail),
                labelText: 'Email Address',
              ),

            ),
            SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (String value){
                print(value);
              },
              onChanged: (String value){
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Password' ,
                border:OutlineInputBorder(),
                icon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye,
                ),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 15),
            Container(
              color: Colors.purple,
              width: double.infinity,
              child: MaterialButton(onPressed: (){},
                child:Text('Login',
                  style:TextStyle(color: Colors.white) ,),
                color: Colors.purple,
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn(),));
            },
              child:Text('SignIn First',
              style:TextStyle(color: Colors.purple)
              ),
              )
          ],
        ),

      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text('MyApp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}