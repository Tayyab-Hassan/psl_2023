import 'package:flutter/material.dart';
import 'package:psl_2023/models/venue.dart';
import 'package:psl_2023/utility/app_color.dart';

class VenueWidget extends StatelessWidget {
  final Venues venue;
  const VenueWidget({super.key, required this.venue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 - 70,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.red,
              blurRadius: 10,
              spreadRadius: 0.001,
              offset: Offset(0, 3))
        ],
        gradient: const RadialGradient(colors: [
          Colors.black87,
          AppColor.primaryColor,
        ]),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    venue.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width) / 2 - 90,
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 30,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      AppColor.primaryColor,
                      Colors.black,
                      AppColor.primaryColor,
                    ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Text(
                    venue.country,
                    style: const TextStyle(
                        fontFamily: 'font3', color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'STADIUM : ${venue.stadium}',
            style: const TextStyle(
              fontFamily: 'font2',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'CITY : ${venue.city}',
            style: const TextStyle(
              fontFamily: 'font2',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
