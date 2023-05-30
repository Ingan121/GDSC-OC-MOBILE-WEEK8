import 'package:flutter/material.dart';
import 'package:week8/const/colors.dart';
import 'package:week8/const/text.dart';
import 'package:week8/layout/arrow_layout.dart';
import 'package:week8/services/api_service.dart';

class MultiplePugImagesPage extends StatefulWidget {
  const MultiplePugImagesPage({super.key});

  @override
  State<MultiplePugImagesPage> createState() => _MultiplePugImagesPageState();
}

class _MultiplePugImagesPageState extends State<MultiplePugImagesPage> {
  late Future _fetchPugImages;

  @override
  void initState() {
    super.initState();
    _fetchPugImages = ApiService().multiplePugImages();
  }

  @override
  Widget build(BuildContext context) {
    return ArrowLayout(
      appBarTitle: "랜덤 퍼그 사진",
      body: FutureBuilder(
        future: _fetchPugImages,
        builder: (context, snapshot) {
          if (snapshot.connectionState.index != 3)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    snapshot.data[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
