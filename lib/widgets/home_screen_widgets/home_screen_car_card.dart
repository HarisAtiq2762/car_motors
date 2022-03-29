import 'package:car_motors/models/car.dart';
import 'package:car_motors/providers/homeCarAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
class HomeScreenCarCard extends StatelessWidget {
  final Car car;
  HomeScreenCarCard({Key key,this.car}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
    return Container(
      width: 1.0.sw,
      height: 0.17.sh,
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 1.0.sw,
              height: 0.13.sh,
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(car.name,style: GoogleFonts.poppins(fontSize: 20.0.sp,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text(car.description,style: GoogleFonts.poppins(fontSize: 12.0.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.solidCalendarAlt,size: 13.sp,),
                            Text(' ${car.model}',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.gasPump,size: 13.sp),
                            Text(' ${car.average}',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.car,size: 13.sp),
                            Text(' ${car.mileage}',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            bottom: 0.075.sh,
            // left: animate.leftPosition.sw,
            left: 0.53.sw,
            duration: Duration(seconds: 1),
            child: Container(
              width: 0.37.sw,
              child: Image(
                image: AssetImage(
                    car.image
                ),
              ),
            ),
          ),
          // Consumer<HomeCarAnimation>(
          //   builder: (context,animate,child){
          //     Future.delayed(
          //       Duration(milliseconds: 50),
          //         (){
          //           animate.animateCar();
          //         }
          //     );
          //     return AnimatedPositioned(
          //       bottom: 0.075.sh,
          //       left: animate.leftPosition.sw,
          //       duration: Duration(seconds: 1),
          //       child: Container(
          //         width: 0.37.sw,
          //         child: Image(
          //           image: AssetImage(
          //               car.image
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      )
    );
  }
}
