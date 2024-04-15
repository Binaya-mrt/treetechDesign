import 'package:design/pages/widgets/circularIcon.dart';
import 'package:design/pages/widgets/destinationDetail.dart';
import 'package:design/pages/widgets/driverDetail.dart';
import 'package:design/pages/widgets/rideDetail.dart';
import 'package:design/pages/widgets/verticalDivider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyRides extends StatelessWidget {
  const MyRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'My Ride',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text('You can now track your ride.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff000000).withOpacity(0.4),
                    )),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularIconCard(
                      color: Theme.of(context).primaryColor,
                      icon: FontAwesomeIcons.locationPinLock),
                  const Text('Destination Details',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xff000000).withOpacity(0.4),
                      )),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const IntrinsicHeight(
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [CustomVerticalDivider(), DestinationCard()]),
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularIconCard(
                      color: Color(0xffEDD500), icon: FontAwesomeIcons.carSide),
                  Text('Ride Information',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xff000000).withOpacity(0.4),
                      )),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const IntrinsicHeight(
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [CustomVerticalDivider(), RideDetailsCard()]),
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularIconCard(
                    color: Color(0xffEDD500),
                    icon: FontAwesomeIcons.solidUser,
                  ),
                  Text('Driver Information',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xff000000).withOpacity(0.4),
                      )),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [CustomVerticalDivider(), DriverDetailsCard()]),

              // Buttom button
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Theme.of(context).primaryColor),
                  child: const Text(
                    'View in Map',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
