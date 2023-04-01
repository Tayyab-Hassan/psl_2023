import 'package:flutter/material.dart';
import 'package:psl_2023/models/history.dart';
import 'package:psl_2023/utility/data_api.dart';
import 'package:psl_2023/widgets/history_widget.dart';

import '../widgets/background.dart';
import '../widgets/custom_appbar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CostumAppbar(
        titleText: 'History',
      ),
      body: BackGroudPic(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<History>>(
          future: DataApi.getAllHistroy(context),
          builder: ((BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<History> history = snapshot.data;
              return ListView.builder(
                  itemCount: history.length,
                  itemBuilder: (context, index) {
                    return HistoryWidget(
                      history: history[index],
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }
}
