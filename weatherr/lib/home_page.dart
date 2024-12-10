
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:weatherr/api_ket.dart';
import 'package:weatherr/drawer_pg.dart';
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  final WeatherFactory wf= WeatherFactory(APIKEY);
  Weather? _weather;
  @override
  void initState() {
    wf.currentWeatherByCityName("Badin").then((w){
      setState(() {
        _weather=w;

      }
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _buildUI(),
      // appBar: AppBar(
      //
      //   centerTitle: true,
      //   title: Text("Weather",style: TextStyle(
      //     fontSize: 25,color: Colors.white
      //   ),),
      //   backgroundColor: CupertinoColors.activeBlue,
      //   leading: Builder(
      //     builder: (context) {
      //       return IconButton(
      //         icon: Icon(Icons.menu,color: Colors.white,),
      //         onPressed: (){
      //           Scaffold.of(context).openDrawer();
      //         },
      //       );
      //     },
      //
      //     ),
      //   ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),label: "Setting")
        ],

      ),
      backgroundColor: Colors.white,
      // drawer: drawer_pg(),

      );

  }
  Widget _buildUI(){
if(_weather==null){
  return const Center(
    child: CircularProgressIndicator(),
  );
}
return SizedBox(
  height:MediaQuery.sizeOf(context).height,
  width: MediaQuery.sizeOf(context).width,
child: Column(
  mainAxisSize: MainAxisSize.max,
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [


  _areaname(),
  _Time(),
  Weather_Png(),
  SizedBox(height: 10,),
  _CurrTemp(),
  Text("Temp feel like: ${_weather?.tempFeelsLike?.celsius?.toStringAsFixed(0)??""}°C",style: TextStyle(
    color: CupertinoColors.activeBlue,fontSize: 15,
  ),),
  SizedBox(height: 10,),
  Other_Prop(),

],
),
);
  }
  Widget _areaname()
  {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

      children: [


        Container(
          child:  Text("${_weather?.areaName??""}",style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.bold
          ),),

        ),
      ],
    );
  }
  Widget _Time(){
    DateTime now=_weather!.date!;
    return Column(

      children: [
        SizedBox(height: 10,),
        Text(DateFormat("h:mm a").format(now),style: TextStyle(
    fontSize: 15)),
        SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(DateFormat("EEEE").format(now),style: TextStyle(
                fontSize: 17,fontWeight: FontWeight.bold))
          ,
            Text(" ${DateFormat("d.m.y").format(now)}",style: TextStyle(
                fontSize: 17,))
          ],
        )
      ],

    );
  }
  Widget Weather_Png(){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "http://openweathermap.org/img/wn/${
              _weather?.weatherIcon
              }@4x.png"
            )
          )
        ),

        ),
 Text(_weather?.weatherDescription??"",style:TextStyle(
   fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent
 ),),
      ],
    );
  }
  Widget _Temp(){
    return Text(_weather?.temperature!.celsius!.round() as String);
  }
  Widget _CurrTemp(){
    return Text("${_weather?.temperature?.celsius?.toStringAsFixed(0)}°C",style: TextStyle(
      fontSize: 70,fontWeight: FontWeight.bold
    ),);
  }
  Widget Other_Prop(){
    return Container(
      height:165,
      width: 325,
      decoration: BoxDecoration(
        color: CupertinoColors.activeBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(height: 15,),
Padding(
  padding:  EdgeInsets.symmetric(horizontal: 25),
  child: Row(

    children: [

      Text("${_weather?.tempMax?.celsius!.round()}°C",style: TextStyle(
        fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
      ),),
      SizedBox(width: 60,),
      Text("${_weather?.tempMin?.celsius!.round()}°C",style: TextStyle(
    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
      SizedBox(width: 53,),
      Text("${_weather?.windSpeed?.round()}km/h",style: TextStyle(
          fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
    ],
  ),
),
    Padding(
    padding:  EdgeInsets.symmetric(horizontal: 30),
    child: Row(

    children: [

    Text("Min",style: TextStyle(
    fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
    ),),
    SizedBox(width: 85,),
    Text("Max",style: TextStyle(
    fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
    SizedBox(width: 78,),
    Text("Wind",style: TextStyle(
    fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
    ],
    ),
    ),
          SizedBox(height: 7,)
          ,
          Divider(color: Colors.white,endIndent: 9,indent: 9,),
          SizedBox(height: 7,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 0),
            child: Row(

              children: [

                Text("${_weather?.humidity?.round()}%",style: TextStyle(
                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                ),),
                SizedBox(width:  53,),
                Text("${_weather?.pressure?.round()}hpa",style: TextStyle(
                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                ),),
                SizedBox(width:  65,),
                Text("${_weather?.cloudiness?.round()}",style: TextStyle(
                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 0),
            child: Row(

              children: [

                Text("Humidity",style: TextStyle(
                    fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 40,),
                Text("Pressure",style: TextStyle(
                    fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
                SizedBox(width: 40,),
                Text("Cloudiness",style: TextStyle(
                    fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

