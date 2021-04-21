import 'package:myapp/model/dataModel.dart';
import 'package:myapp/model/modelList.dart';
import 'package:myapp/network/apiProvider.dart';

class ApiRespository {
  ApiProvider _apiProvider = ApiProvider();
  int? detailid;

  ApiRespository({this.detailid});

  Future<ModelUser> get apirepo => _apiProvider.getHttp(detailid);

  Future<ModelUserList> get listrepo => _apiProvider.getbauHttp();
}
