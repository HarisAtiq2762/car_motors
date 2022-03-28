import 'package:car_motors/models/car.dart';
import 'package:car_motors/screens/car_detail.dart';
import 'package:car_motors/widgets/home_screen_widgets/home_screen_car_card.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

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
    return ColorfulSafeArea(
      bottom: false,
      color: Color(0xff0E1D36).withOpacity(0.9),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 0.18.sh,
                decoration: BoxDecoration(
                  color: Color(0xff0E1D36).withOpacity(0.9),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.0))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Haris Motors',style: GoogleFonts.sirinStencil(color: Colors.white,fontSize: 30.sp),),
                        Container(
                          width: 0.45.sw,
                          child: Row(
                            children: [
                              SizedBox(width: 0.16.sw,),
                              FaIcon(FontAwesomeIcons.facebookMessenger,color: Colors.white,),
                              SizedBox(width: 0.05.sw,),
                              FaIcon(FontAwesomeIcons.locationArrow,color: Colors.white,),
                              SizedBox(width: 0.05.sw,),
                              FaIcon(FontAwesomeIcons.solidMoon,color: Colors.white,),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02.sh,),
                    Container(
                      width: 0.9.sw,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What are you looking for?',
                            hintStyle: GoogleFonts.poppins(fontSize: 12.sp,color: Colors.grey,fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Browse by categories',style: GoogleFonts.lobster(fontSize: 20.sp),),
                    SizedBox(height: 0.01.sh,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 0.3.sw,
                            height: 0.15.sh,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blueGrey.withOpacity(0.2),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/brv.png')
                                )
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Hatchback',style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500),
                                )
                            ),
                          ),
                          SizedBox(width: 0.05.sw,),
                          Container(
                            width: 0.3.sw,
                            height: 0.15.sh,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blueGrey.withOpacity(0.2),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/fortuner.png')
                                )
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('SUV',style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500),
                                )
                            ),
                          ),
                          SizedBox(width: 0.05.sw,),
                          Container(
                            width: 0.3.sw,
                            height: 0.15.sh,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blueGrey.withOpacity(0.2),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/civic.png')
                                )
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Sedan',style: GoogleFonts.poppins(fontSize: 15.sp,fontWeight: FontWeight.w500),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.025.sh,),
                    Text('Popular cars',style: GoogleFonts.lobster(fontSize: 20.sp),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(child: CarDetail(car: Car(
                            image: 'assets/images/fortuner.png',
                            description: 'Experience the better version of power and speed with luxury cars from Toyota Pakistan',
                            name: 'Fortuner',
                            model: '2018',
                            average: '11 Km/L',
                            mileage: '10,000 Km',
                            company: 'Toyota',
                            price: '9500000 PKR',
                            type: 'SUV',
                            logoImg: ' ',
                            engineCapacity: '2500 CC'
                        ),), type: PageTransitionType.bottomToTop));
                      },
                      child: HomeScreenCarCard(
                        car: Car(
                            image: 'assets/images/fortuner.png',
                            description: 'Experience the better version of power and speed with luxury cars from Toyota Pakistan',
                            name: 'Fortuner',
                            model: '2018',
                            average: '11 Km/L',
                            mileage: '10,000 Km',
                            company: 'Toyota',
                            price: '9500000 PKR',
                            type: 'SUV',
                            logoImg: ' ',
                            engineCapacity: '2500 CC'
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(child: CarDetail(car: Car(
                            image: 'assets/images/brv.png',
                            description: 'Experience the better version of power and speed with luxury cars from Honda Pakistan',
                            name: 'Honda Br-V',
                            model: '2016',
                            average: '15 Km/L',
                            mileage: '50,000 Km',
                            company: 'Honda',
                            price: '2500000 PKR',
                            type: 'HatchBack',
                            logoImg: ' ',
                            engineCapacity: '1500 CC'
                        ),), type: PageTransitionType.bottomToTop));
                      },
                      child: HomeScreenCarCard(
                        car: Car(
                            image: 'assets/images/brv.png',
                            description: 'Experience the better version of power and speed with luxury cars from Honda Pakistan',
                            name: 'Honda Br-V',
                            model: '2016',
                            average: '15 Km/L',
                            mileage: '50,000 Km',
                            company: 'Honda',
                            price: '2500000 PKR',
                            type: 'HatchBack',
                            logoImg: ' ',
                            engineCapacity: '1500 CC'
                        ),
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                    HomeScreenCarCard(
                      car: Car(
                          image: 'assets/images/camry.png',
                          description: 'Experience the better version of power and speed with luxury cars from Toyota Pakistan',
                          name: 'Camry',
                          model: '2022',
                          average: '15 Km/L',
                          mileage: '50,000 Km',
                          company: 'Toyota',
                          price: '2500000 PKR',
                          type: 'Sedan',
                          logoImg: ' ',
                          engineCapacity: '2500 CC'
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                    HomeScreenCarCard(
                      car: Car(
                          image: 'assets/images/sportage.png',
                          description: 'Experience the better version of power and speed with luxury cars from KIA Pakistan',
                          name: 'Sportage',
                          model: '2020',
                          average: '15 Km/L',
                          mileage: '1,000 Km',
                          company: 'KIA',
                          price: '9500000 PKR',
                          type: 'SUV',
                          logoImg: ' ',
                          engineCapacity: '2500 CC'
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                    HomeScreenCarCard(
                      car: Car(
                          image: 'assets/images/civic.png',
                          description: 'Experience the better version of power and speed with luxury cars from Honda Pakistan',
                          name: 'Honda Civic',
                          model: '2019',
                          average: '12 Km/L',
                          mileage: '80,000 Km',
                          company: 'Honda',
                          price: '5500000 PKR',
                          type: 'Sedan',
                          logoImg: ' ',
                          engineCapacity: '2000 CC'
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                    HomeScreenCarCard(
                      car: Car(
                          image: 'assets/images/tucson.png',
                          description: 'Experience the better version of power and speed with luxury cars from Hyundai Pakistan',
                          name: 'Tucson',
                          model: '2020',
                          average: '18 Km/L',
                          mileage: '8,000 Km',
                          company: 'Hyundai',
                          price: '9500000 PKR',
                          type: 'SUV',
                          logoImg: ' ',
                          engineCapacity: '2500 CC'
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
