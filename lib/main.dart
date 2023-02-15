import 'package:e_commerce/Screen/Detail%20Page.dart';
import 'package:e_commerce/Screen/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main(){
  runApp(EcommerceApp());
}

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        drawer: _buildDrawer,


        appBar: _buildAppbar,
        body: HomeScreen(),

      ),
    );
  }


  get _buildDrawer{
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.green,
          ),
          ListTile(
            onTap: (){

            },
            title: Text("Home"),
            leading: Icon(Icons.home),


          ),
          ListTile(
            onTap: (){

            },
            title: Text("Setting"),
            leading: Icon(Icons.settings),


          ),
          ListTile(
            onTap: (){

            },
            title: Text("Language"),
            leading: Icon(Icons.language),


          ),
          ListTile(
            onTap: (){

            },
            title: Text("Logout"),
            leading: Icon(Icons.logout),


          ),
        ],
      )
    );
  }
  get _buildAppbar{
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      leading: IconButton(
        icon: SvgPicture.asset("image/menu.svg"),
        onPressed: (){
          scaffoldKey.currentState?.openDrawer();
        },
      ),

    );
  }




}
