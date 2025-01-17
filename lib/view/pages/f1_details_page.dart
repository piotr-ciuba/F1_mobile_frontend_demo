import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/common/endpoints.dart';
import 'package:f1_mobile_frontend_demo/core/repositories/f1_repository.dart';
import 'package:f1_mobile_frontend_demo/core/services/f1_service.dart';
import 'package:f1_mobile_frontend_demo/core/utils/api_client.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter/material.dart';

class F1DetailsPage extends StatefulWidget {
  const F1DetailsPage({super.key});

  @override
  State<F1DetailsPage> createState() => _F1DetailsPageState();
}

class _F1DetailsPageState extends State<F1DetailsPage> {
  ApiClient get apiClient => ApiClient(
        dio: Dio(),
        endpoints: Endpoints(),
      );

  F1Service get f1Service => F1Service(apiClient);
  F1Repository get f1Repository => F1Repository(f1Service);

  List<Race>? races;

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
