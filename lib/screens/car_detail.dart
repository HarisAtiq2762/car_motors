import 'package:car_motors/models/car.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class CarDetail extends StatelessWidget {
  final Car car;
  CarDetail({Key key,this.car}) : super(key: key);

  List<Widget> getInfoDetails(){
    List<Widget> infoList = [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.solidCalendarAlt),
          Text(car.model)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.gasPump),
          Text(car.average)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.car),
          Text(car.mileage)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.carSide),
          Text(car.type)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.chair),
          Text('4 Seats')
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(FontAwesomeIcons.powerOff),
          Text(car.engineCapacity)
        ],
      ),
    ];
    return infoList;
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
      body: ColorfulSafeArea(
        color: Color(0xff9daedb),
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff9daedb),
                width: 1.0.sw,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,4.0,8.0,4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: FaIcon(CupertinoIcons.back,size: 25.sp,color: Colors.black,), onPressed: (){Navigator.pop(context);}),
                      FaIcon(CupertinoIcons.bookmark,size: 25.sp,color: Colors.black,),
                    ],
                  ),
                ),
              ),
              Container(
                width: 1.0.sw,
                height: 0.35.sh,
                decoration: BoxDecoration(
                    color: Color(0xff9daedb),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0))
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 0.31.sh,
                      decoration: BoxDecoration(
                          color: Color(0xff0E1D36).withOpacity(0.05),
                          borderRadius: BorderRadius.only(topLeft: Radius.elliptical(200, 200),bottomLeft: Radius.elliptical(200, 200))
                      ),
                    ),
                    Image(
                      image: AssetImage(car.image),
                      width: 1.0.sw,
                      height: 0.35.sh,
                    )
                  ],
                ),
              ),
              Container(
                width: 1.0.sw,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(car.name,style: GoogleFonts.satisfy(fontSize: 24.0.sp,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text(car.model+', '+car.company+' '+car.type+' '+car.name,style: GoogleFonts.poppins(fontSize: 16.0.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                    Divider(
                      color: Color(0xff0E1D36).withOpacity(0.9),
                      indent: 30.0,
                      endIndent: 30.0,
                    ),
                    Container(
                      width: 1.0.sw,
                      height: 0.155.sh,
                      child: GridView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10.0,mainAxisSpacing: 10.0,childAspectRatio: 2),
                          itemCount: 6,
                          itemBuilder: (context,index){
                            return Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff9daedb).withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: getInfoDetails()[index]
                            );
                          }),
                    ),
                    Divider(
                      color: Color(0xff0E1D36).withOpacity(0.9),
                      indent: 30.0,
                      endIndent: 30.0,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Description',style: GoogleFonts.poppins(fontSize: 20.0.sp,fontWeight: FontWeight.w400,color: Colors.black),)),
                    Text(car.description,style: GoogleFonts.poppins(fontSize: 12.0.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 1.0.sw,
                        height: 0.3.sh,
                        decoration: BoxDecoration(
                            color: Color(0xff9daedb).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('CONDITION',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                  SizedBox(width: 0.3.sw,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('MAKE',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('MODEL',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                  SizedBox(width: 0.3.sw,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('TYPE',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('REGISTRATION',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                  SizedBox(width: 0.3.sw,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('YEAR',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('COLOR',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                  SizedBox(width: 0.3.sw,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('MILAGE',style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w200),),
                                      Text('Used',style: GoogleFonts.poppins(color: Colors.black,fontSize: 16.sp)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
