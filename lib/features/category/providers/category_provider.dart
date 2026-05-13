import 'package:flutter/material.dart';
import '../../../data/repositories/drama_repository.dart';
import '../../../data/repositories/category_repository.dart';
import '../../../models/drama_model.dart';
import '../../../models/category_model.dart';

class CategoryProvider extends ChangeNotifier {
  final CategoryRepository _categoryRepo;
  final DramaRepository _dramaRepo;

  CategoryProvider(this._categoryRepo, this._dramaRepo) {
    _loadData();
  }

  List<CategoryModel> _categories = [];
  CategoryModel _selectedCategory = const CategoryModel(id: '0', name: '全部', icon: 'apps');
  List<DramaModel> _dramas = [];

  List<CategoryModel> get categories => _categories;
  CategoryModel get selectedCategory => _selectedCategory;
  List<DramaModel> get dramas => _dramas;

  void _loadData() {
    _categories = _categoryRepo.getAllCategories();
    _dramas = _dramaRepo.getDramasByCategory(_selectedCategory.name);
    notifyListeners();
  }

  void selectCategory(CategoryModel category) {
    _selectedCategory = category;
    _dramas = _dramaRepo.getDramasByCategory(category.name);
    notifyListeners();
  }
}
