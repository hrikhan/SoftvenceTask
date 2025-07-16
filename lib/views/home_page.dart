import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:softvence_task/utility/colors.dart';
import 'package:softvence_task/widgets/notch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Notch(),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),

              shrinkWrap: true,
              children: [
                15.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 37.h,

                    decoration: BoxDecoration(
                      color: Color(0xffF7F7FA),
                      border: Border.all(color: Color(0xffC6CAD1), width: 1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                        suffixIcon: Container(
                          height: 37.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.appPrimaryColor1,
                                AppColors.appPrimaryColor2,
                              ],
                            ),

                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.r),
                              bottomRight: Radius.circular(8.r),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset('Assets/search-md.svg'),
                          ),
                        ),
                        border: InputBorder.none,
                        hintText:
                            '    Search by keyword (eg vegan, birthday, taco)',
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6C7787),
                        ),
                      ),
                    ),
                  ),
                ),
                20.verticalSpace,
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 253.h,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.10),
                            offset: const Offset(0, 4),
                            blurRadius: 24,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.r),
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return LinearGradient(
                                      colors: [
                                        Color(0xff000000).withOpacity(.1),
                                        Colors.white,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ).createShader(bounds);
                                  },
                                  blendMode: BlendMode.multiply,

                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      12.r,
                                    ),
                                    child: Image(
                                      image: AssetImage('Assets/picture1.jpg'),
                                      height: 152.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 32.w,
                                  width: 32.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1A1A1A).withOpacity(.50),

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 14.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          10.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Bluetooth Wireless',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff1A1A1A),
                              ),
                            ),
                          ),
                          5.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  '\$20-\$28',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff0151FF),
                                  ),
                                ),
                                2.horizontalSpace,
                                Text(
                                  '· MOQ : 10',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff484848),
                                  ),
                                ),
                                7.horizontalSpace,
                                SvgPicture.asset('Assets/star_rate.svg'),
                                5.horizontalSpace,
                                Text(
                                  '4.5',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff484848),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          15.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              height: 28.h,
                              width: 146.5.w,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.appPrimaryColor1,
                                    AppColors.appPrimaryColor2,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                              child: Center(
                                child: Text(
                                  'Purchase Now',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
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
    );
  }
}
