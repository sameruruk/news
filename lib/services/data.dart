import 'package:newsapi/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryname = 'Business';
  categoryModel.image = 'images/business.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryname = 'Entertainment';
  categoryModel.image = 'images/health.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryname = 'General';
  categoryModel.image = 'images/business.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryname = 'Sport';
  categoryModel.image = 'images/sport.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryname = 'Health';
  categoryModel.image = 'images/business.jpg';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}
