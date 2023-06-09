import 'package:dailynews/model/category_model.dart';

List<CategoryModel> getCategories(){
   List<CategoryModel> category=[];
   CategoryModel categoryModel= CategoryModel(imageUrl: " ", categoryName: "");

    //a1
   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName ="Developer";
   categoryModel.imageUrl ="https://cdn-employer-wp.arc.dev/wp-content/uploads/2022/04/software-development-costs-1128x635.jpg";
   category.add(categoryModel);

   //a2
   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName ="Bussines";
   categoryModel.imageUrl ="https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80";
   category.add(categoryModel);



   //b
   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName  = "Entertainment";
   categoryModel.imageUrl = "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
   category.add(categoryModel);
   //c
   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName  = "General";
   categoryModel.imageUrl = "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
   category.add(categoryModel);

   //c

   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName  = "Health";
   categoryModel.imageUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
   category.add(categoryModel);
//d

   //5
   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName  = "Science";
   categoryModel.imageUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
   category.add(categoryModel);
   //e

   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName  = "Sports";
   categoryModel.imageUrl = "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
   category.add(categoryModel);
 //f
   categoryModel = CategoryModel(imageUrl: " ", categoryName: "");
   categoryModel.categoryName  = "Technology";
   categoryModel.imageUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
   category.add(categoryModel);

   return category;
}

