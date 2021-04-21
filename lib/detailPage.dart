import 'package:flutter/material.dart';
import 'package:myapp/network/apiRepository.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, required this.idDetail}) : super(key: key);

  int idDetail;
  @override
  Widget build(BuildContext context) {
    ApiRespository _apiRespository = ApiRespository(detailid: idDetail);

    return Scaffold(
      appBar: AppBar(
        title: Text(idDetail.toString()),
      ),
      body: FutureBuilder(
        future: _apiRespository.apirepo,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              // TODO: Handle this case.
              break;
            case ConnectionState.waiting:
              // TODO: Handle this case.
              break;
            case ConnectionState.active:
              // TODO: Handle this case.
              break;
            case ConnectionState.done:
              return Center(
                  child:
                      Text(snapshot.data?.data?.firstName ?? "Tidak ada data"));
              break;
          }
          return Text("data");
        },
      ),
    );
  }
}
