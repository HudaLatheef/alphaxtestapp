import 'package:alphaxtestapp/core/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        
       backgroundColor: Colors.transparent,
        title: Title(color: Colors.green, child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.w600),
                      ),),
                      actions: [Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.notifications),
                      )],

      ),
      backgroundColor: Color(0xFF0F2027),
      body: Container(
         
         decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
        child: Column(
          children: [
            // Header
           
        
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, John! 👋",
                      style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
        
                    SizedBox(height: 8.h),
        
                    Text(
                      "Welcome back to your account",
                      style: TextStyle(color: Colors.grey.shade200, fontSize: 14.sp,),
                    ),
        
                    SizedBox(height: 24.h),
        
                    // Profile Summary
                    Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18.r),
                        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 12, offset: const Offset(0, 4))],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Profile Summary",
                            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
        
                          SizedBox(height: 16.h),
        
                          Row(
                            children: [
                              CircleAvatar(radius: 28.r, backgroundImage: const NetworkImage("https://i.pravatar.cc/150")),
        
                              SizedBox(width: 14.w),
        
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "John Doe",
                                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      "johndoe",
                                      style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      "john.doe@email.com",
                                      style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                                    ),
                                  ],
                                ),
                              ),
        
                              Icon(Icons.chevron_right, color: Colors.grey, size: 26.sp),
                            ],
                          ),
                        ],
                      ),
                    ),
        
                    SizedBox(height: 20.h),
        
                    Row(
                      children: [
                        Expanded(
                          child: _InfoCard(icon: Icons.person_outline, title: "User ID", value: "1"),
                        ),
                        SizedBox(width: 14.w),
                        Expanded(
                          child: _InfoCard(icon: Icons.shield_outlined, title: "Role", value: "User"),
                        ),
                      ],
                    ),
        
                    SizedBox(height: 24.h),
        
                    SizedBox(
                      width: double.infinity,
                      height: 55.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ConstantColors.primaryGreen,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View Profile",
                          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
        
                    SizedBox(height: 16.h),
        
                    SizedBox(
                      width: double.infinity,
                      height: 55.h,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.logout, color: Colors.red),
                        label: Text(
                          "Logout",
                          style: TextStyle(color: Colors.red, fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.grey.shade200),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoCard({required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 12, offset: const Offset(0, 4))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: const Color(0xffEEF0FF),
            child: Icon(icon, color: const Color(0xff4F5CFB), size: 22.sp),
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 13.sp),
          ),
          SizedBox(height: 6.h),
          Text(
            value,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
