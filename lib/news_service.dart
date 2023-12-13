import 'package:unit_testing/arctilce.dart';

class NewsService {
  final _arctile = List.generate(10, (index) => Arctile("tile", 'description'));

  Future<List<Arctile>> getArctile() async {
    return Future.delayed(const Duration(seconds: 2)).then((value) => _arctile);
  }
}
