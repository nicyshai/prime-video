import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  Future<void> fetch() async {
    SharedPreferences _pref=await SharedPreferences.getInstance();
    setState(() async {
      email=await _pref.getString("email")!;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.play_arrow,color: Colors.blue,size: 28,),
                  SizedBox(width: 6,),
                  Text("Prime",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(children: [
                Text("Subsriptions",style: TextStyle(color: Colors.white,fontSize: 16),
                ),
                SizedBox(width: 10,),
                Icon(Icons.grid_view,color: Colors.white,),
                SizedBox(width: 10,),
                Icon(Icons.add,color: Colors.white,)
              ],)

            ],
          ),
          SizedBox(height: 25,),
          Row(children: [
            _buildCategoryButton("Movie"),
            SizedBox(width: 12,),
            _buildCategoryButton("TV show"),
            SizedBox(width: 12,),
            _buildCategoryButton("Live tv"),
            SizedBox(width: 12,),

          ],)
        ],
      ),
    );

  }

  Widget _buildCategoryButton(String title){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(title,style: TextStyle(color: Colors.white,fontSize: 14),),
    );

  }
}
