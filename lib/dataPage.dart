import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myapp/detailPage.dart';
import 'package:myapp/model/dataModel.dart';
import 'package:myapp/model/modelList.dart';
import 'package:myapp/network/apiRepository.dart';

class DataPage extends StatefulWidget {
  DataPage({Key? key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  ApiRespository _apiRespository = ApiRespository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _apiRespository.listrepo,
      builder: (BuildContext context, AsyncSnapshot<ModelUserList> snapshot) {
        print(snapshot.data);
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
            // return Text(snapshot.data?.data?.firstName ?? "dfdf");
            return dataList(snapshot);
            break;
        }
        return Text("Data");
      },
    );
  }

  Widget dataList(AsyncSnapshot<ModelUserList> snapshot) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: snapshot.data?.data?.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(snapshot.data?.data?[index].firstName ?? ""),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              idDetail: snapshot.data?.data?[index].id ?? 0,
                            )));
              },
              child: Text("Detail"),
            )
          ],
        );
      },
    );
  }
}
