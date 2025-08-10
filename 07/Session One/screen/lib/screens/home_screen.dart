import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812),
      minTextAdapt: true,
    );

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 25.r,
                backgroundImage: AssetImage("assets/image.jpg"),
              ),
              title: Text(
                "Session one",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Welcome back", style: TextStyle(fontSize: 16.sp)),
              trailing: Icon(Icons.notifications, size: 30.sp),
            ),
            SizedBox(height: 10.h),
            Divider(
              thickness: 1,
              color: Colors.black,
              indent: 2.w,
              endIndent: 2.w,
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 10.w,
                  childAspectRatio: 0.8,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onDoubleTap: () {
                      print('Product $index tapped ');
                    },
                    child: InkWell(
                      onTap: () {
                        print('Product $index clicked');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 50.sp,
                              color: Colors.blue,
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              'Product $index',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$${(index + 1) * 10}',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
