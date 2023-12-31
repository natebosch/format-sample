import 'package:data/models/store.dart';
import 'package:domain/entities/item_entity.dart';
import 'package:domain/entities/store_entity.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class Item extends ParseObject with ItemEntity implements ParseCloneable {
  Item() : super(_keyTableName);

  Item.clone() : this();

  @override
  clone(Map map) => Item.clone()..fromJson(map);

  static const String _keyTableName = 'Item';
  static const String keyObjectId = 'objectId';
  static const String keyName = 'name';
  static const String keyDescription = 'description';
  static const String keyPrice = 'price';
  static const String keyStore = 'store'; //
  static const String keyParent = 'parent'; //
  static const String keyPosition = 'position';
  static const String keyPicture = 'picture';

  String get name => get<String>(keyName);

  set name(String name) => set<String>(keyName, name);

  String get description => get<String>(keyDescription);

  set description(String description) => set<String>(
    keyDescription,
    description,
  );

  String get picture => get<String>(keyPicture);

  set picture(String picture) => set<String>(keyPicture, picture);

  int get price => get<int>(keyPrice);

  set price(int price) => set<int>(keyPrice, price);

  ParseObject get parent => get<ParseObject>(keyParent);

  int get position => get<int>(keyPosition);

  set position(int position) => set<int>(keyPosition, position);

  Future<StoreEntity> get store async {
    final response = await getRelation(keyStore).getQuery().query();
    return response.result as Store;
  }
}
