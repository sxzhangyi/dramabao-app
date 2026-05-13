import '../../models/drama_model.dart';
import '../../models/banner_model.dart';
import '../mock/mock_dramas.dart';
import '../mock/mock_banners.dart';

abstract class DramaRepository {
  List<DramaModel> getDramasBySection(String section);
  List<DramaModel> getDramasByCategory(String category);
  List<DramaModel> getHotDramas();
  List<BannerModel> getBannerDramas();
}

class MockDramaRepository implements DramaRepository {
  @override
  List<DramaModel> getDramasBySection(String section) {
    if (section == '今日必看') return mockDramas.take(8).toList();
    if (section == '热播TOP10') return mockDramas.take(10).toList();
    return mockDramas.where((d) => d.category == section).toList();
  }

  @override
  List<DramaModel> getDramasByCategory(String category) {
    if (category == '全部') return mockDramas;
    return mockDramas.where((d) => d.category == category).toList();
  }

  @override
  List<DramaModel> getHotDramas() => mockDramas.take(10).toList();

  @override
  List<BannerModel> getBannerDramas() => mockBanners;
}
