import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

import 'Detail Page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(

        children: [
          Container(
            height: 150,

            decoration: BoxDecoration(
                color: Colors.green,

                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Hello everyone", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    // margin: EdgeInsets.all(20),
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.grey
                          )
                        ]
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        maxLines: 2,

                        decoration: InputDecoration(
                            hintText: "Search here",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: SvgPicture.asset("image/search.svg")
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildTextShow("Recomment"),

          Container(

            height: 400,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),




              ],
            ),
          ),
          _buildTextShow("Popular"),

          Container(

            height: 400,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

              ],
            ),
          ),



          _buildTextShow("Indoor"),

          Container(

            height: 400,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

              ],
            ),
          ),


          _buildTextShow("Outdoor"),

          Container(

            height: 400,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant03.png",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant03.png","Hello", "200", "Cambodia"),
                ),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(
                    image: "image/product/plant02.jpg",
                    name: "Hello",
                    price: "300",
                    country: "Cambodia",
                  ))),
                  child:      _buildItem("image/product/plant02.jpg","Hello", "200", "Cambodia"),
                ),

              ],
            ),
          ),




        ],
      ),
    );
  }



  Widget _buildTextShow(String text){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(text, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            ElevatedButton(
              child: Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
              style: ElevatedButton.styleFrom(

                  primary: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              onPressed: (){

              },
            )

          ],
        ),
      ),
    );
  }

  Widget _buildItem(String image,String productName,String productPrice,String country){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 5,
                  color: Colors.grey
              )
            ]

        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,

              decoration: BoxDecoration(

                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(productName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                  ),
                  Container(
                    child: Text(productPrice,style: TextStyle(fontSize: 18,color: Colors.green),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(country,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),

              ),
            )


          ],

        ),
      ),

    );
  }


}
