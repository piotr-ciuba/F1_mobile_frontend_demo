import 'package:f1_mobile_frontend_demo/core/repositories/f1_repository.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class F1DetailsPage extends StatefulWidget {
  const F1DetailsPage({super.key});

  @override
  State<F1DetailsPage> createState() => _F1DetailsPageState();
}

class _F1DetailsPageState extends State<F1DetailsPage> {
  final GetIt getIt = GetIt.instance;
  late final F1Repository f1Repository;

  List<Race>? races;

  @override
  void initState() {
    super.initState();
    f1Repository = getIt<F1Repository>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: races != null ? races!.length : 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: races != null
                  ? Text(races![index].raceName ?? '')
                  : Text('Item $index'),
              leading: GestureDetector(
                onTap: () async {
                  List<Race>? racesResponse = await f1Repository.getF1Races();

                  if (racesResponse is List<Race>) {
                    races = racesResponse;
                    setState(() {});
                  }
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}
