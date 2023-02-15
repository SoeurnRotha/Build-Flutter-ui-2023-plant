import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.image, required this.name, required this.price, required this.country}) : super(key: key);

  final String image, name, price,country;


  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
      bottomSheet:          Row(
        children: [

          ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
                elevation: 10,
                foregroundColor: Colors.white,
                fixedSize: Size(MediaQuery.of(context).size.width/2, 60)
            ),
            child: Text("Add to cart"),
          ),
          ElevatedButton(

            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
                elevation: 10,
                foregroundColor: Colors.white,
                fixedSize: Size(MediaQuery.of(context).size.width/2, 60)
            ),
            child: Text("Cencal"),
          )
        ],
      )
    );
  }


  get _buildBody{
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _showProduct,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(widget.name,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
                ),
                Container(
                  child: Text(widget.price + "\$",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green),),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 5),
            child: Container(
              child: Text( widget.country, style: TextStyle(fontSize: 20,color: Colors.green),),
            ),
          ),




        ],
      ),
    );
  }


  get _showProduct{
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIcon("image/detail/01.png"),
              _buildIcon("image/detail/02.png"),
              _buildIcon("image/detail/03.png"),
              _buildIcon("image/detail/04.png"),
              _buildIcon("image/detail/05.png"),
            ],
          ),
        ),
        SizedBox(width: 30,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                ),
                image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover
                )
            ),
          ),
        )
      ],
    );
  }


  Widget _buildIcon(String img){
    return       Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        width: 62,
        height: 62,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            boxShadow: [
              BoxShadow(
                  offset: Offset(1,2,),
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.grey
              )
            ]


        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(img),
        ),
      ),
    );
  }
}
