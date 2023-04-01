import 'package:flutter/material.dart';
import 'package:psl_2023/models/venue.dart';
import 'package:psl_2023/utility/data_api.dart';

import '../widgets/background.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/venue_widget.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CostumAppbar(
        titleText: 'VENUES',
      ),
      body: BackGroudPic(
          padding: const EdgeInsets.all(10),
          child: FutureBuilder<List<Venues>>(
            future: DataApi.getAllVenues(context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                List<Venues> venues = snapshot.data;
                return ListView.builder(
                    itemCount: venues.length,
                    itemBuilder: (context, index) {
                      return VenueWidget(
                        venue: venues[index],
                      );
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
