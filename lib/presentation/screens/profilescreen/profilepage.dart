import 'package:alphaxtestapp/presentation/bloc/profile/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';


Widget _headerShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Container(
      height: 120,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const CircleAvatar(radius: 35, backgroundColor: Colors.white),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 15, width: 120, color: Colors.white),
                const SizedBox(height: 10),
                Container(height: 12, width: 180, color: Colors.white),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget _cardShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 14, width: 100, color: Colors.white),
          const SizedBox(height: 12),
          _shimmerRow(),
          _shimmerRow(),
          _shimmerRow(),
        ],
      ),
    ),
  );
}

Widget _shimmerRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Container(height: 12, width: 100, color: Colors.white),
        const SizedBox(width: 20),
        Expanded(child: Container(height: 12, color: Colors.white)),
      ],
    ),
  );
}
Widget _loadingUI() {
  return Column(
    children: [
      _headerShimmer(),
      const SizedBox(height: 20),
      _cardShimmer(),
      _cardShimmer(),
      _cardShimmer(),
    ],
  );
}
class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
       final stateprofilebloc = context.watch<ProfileBloc>().state;
     
        return Scaffold(
          backgroundColor: const Color(0xFFF6F7FB),
          appBar: AppBar(title: const Text("Profile"), centerTitle: true, elevation: 0, backgroundColor: Colors.white, foregroundColor: Colors.black),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child:stateprofilebloc.isloadingprofiledata == true
          ? _loadingUI()
          : Column(children: [_header("${stateprofilebloc.profiledata?.firstName ?? ''} ${stateprofilebloc.profiledata?.lastName ?? ''}"), const SizedBox(height: 20), _infoCard(), const SizedBox(height: 16), _contactCard(), const SizedBox(height: 16), _companyCard()]),
          ),
        );
      
   } );
  }

  Widget _header(String name) {
    return Builder(
    builder: (context) {
       final stateprofilebloc = context.watch<ProfileBloc>().state;
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [ Color(0xFF0F2027),
                    Color(0xFF203A43),
                    Color(0xFF2C5364),]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              CircleAvatar(radius: 35, backgroundImage: NetworkImage(stateprofilebloc.profiledata?.image ?? 'https://picsum.photos/200/300/?blur')),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text("Age: ${stateprofilebloc.profiledata?.age??''} • ${stateprofilebloc.profiledata?.bloodGroup??''}", style: const TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  Widget _infoCard() {
    return Builder(builder: (context) {
       final stateprofilebloc = context.watch<ProfileBloc>().state;
        return _card(title: "Personal Info", children: [_row("Height", "${stateprofilebloc.profiledata?.height} cm"), _row("Weight", "${stateprofilebloc.profiledata?.weight} kg"), _row("Eye Color", stateprofilebloc.profiledata?.eyeColor??''), _row("University", stateprofilebloc.profiledata?.university??'')]);
      }
    );
  }

  Widget _contactCard() {
    return  Builder(builder: (context) {
       final stateprofilebloc = context.watch<ProfileBloc>().state;
        return _card(title: "Contact", children: [_row("Email", stateprofilebloc.profiledata?.email??""), _row("Phone", stateprofilebloc.profiledata?.phone??'')]);
      }
    );
  }

  Widget _companyCard() {
 
    return Builder(
      builder: (context) {
        final stateprofilebloc = context.watch<ProfileBloc>().state;
        return _card(title: "Company", children: [_row("Name", stateprofilebloc.profiledata?.company?.name??''), _row("Role", stateprofilebloc.profiledata?.company?.title??''), _row("Department", stateprofilebloc.profiledata?.company?.department??'')]);
      }
    );
  }

  Widget _card({required String title, required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 5))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
