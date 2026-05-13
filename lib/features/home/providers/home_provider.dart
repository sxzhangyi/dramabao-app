import 'package:flutter/material.dart';
import 'package:dramabao_app/data/repositories/drama_repository.dart';
import 'package:dramabao_app/models/drama_model.dart';
import 'package:dramabao_app/models/banner_model.dart';

class HomeProvider extends ChangeNotifier {
  final DramaRepository _repository;

  HomeProvider(this._repository) {
    _loadData();
  }

  List<DramaModel> _todayMustWatch = [];
  List<DramaModel> _hotTop10 = [];
  List<DramaModel> _rebirth = [];
  List<DramaModel> _familyFeud = [];
  List<DramaModel> _sweetPet = [];
  List<DramaModel> _urbanWar = [];
  List<BannerModel> _banners = [];

  List<DramaModel> get todayMustWatch => _todayMustWatch;
  List<DramaModel> get hotTop10 => _hotTop10;
  List<DramaModel> get rebirth => _rebirth;
  List<DramaModel> get familyFeud => _familyFeud;
  List<DramaModel> get sweetPet => _sweetPet;
  List<DramaModel> get urbanWar => _urbanWar;
  List<BannerModel> get banners => _banners;

  void _loadData() {
    _todayMustWatch = _repository.getDramasBySection('今日必看');
    _hotTop10 = _repository.getDramasBySection('热播TOP10');
    _rebirth = _repository.getDramasBySection('重生逆袭');
    _familyFeud = _repository.getDramasBySection('豪门恩怨');
    _sweetPet = _repository.getDramasBySection('闪婚甜宠');
    _urbanWar = _repository.getDramasBySection('都市战神');
    _banners = _repository.getBannerDramas();
    notifyListeners();
  }
}
