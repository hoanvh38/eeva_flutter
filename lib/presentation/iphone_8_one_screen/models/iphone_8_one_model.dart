import 'package:get/get.dart';
import 'listarrowleft_item_model.dart';
import 'listuser_item_model.dart';

class Iphone8OneModel {
  RxList<ListarrowleftItemModel> listarrowleftItemList =
      RxList.generate(3, (index) => ListarrowleftItemModel());

  RxList<ListuserItemModel> listuserItemList =
      RxList.generate(6, (index) => ListuserItemModel());
}
