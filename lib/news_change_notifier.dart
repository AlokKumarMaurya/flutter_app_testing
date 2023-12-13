import 'package:flutter/material.dart';
import 'package:unit_testing/news_service.dart';

import 'arctilce.dart';

class NewsChangeNotifier extends ChangeNotifier {
  final NewsService _newsService;
  NewsChangeNotifier(this._newsService);

  final List<Arctile> _article = [];
  List<Arctile> get article => _article;

  final bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getArctile() async {}
}
