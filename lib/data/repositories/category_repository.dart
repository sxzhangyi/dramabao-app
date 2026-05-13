import 'package:dramabao_app/models/category_model.dart';
import 'package:dramabao_app/data/mock/mock_categories.dart';

abstract class CategoryRepository {
  List<CategoryModel> getAllCategories();
}

class MockCategoryRepository implements CategoryRepository {
  @override
  List<CategoryModel> getAllCategories() => mockCategories;
}
