import '../../models/category_model.dart';
import '../mock/mock_categories.dart';

abstract class CategoryRepository {
  List<CategoryModel> getAllCategories();
}

class MockCategoryRepository implements CategoryRepository {
  @override
  List<CategoryModel> getAllCategories() => mockCategories;
}
