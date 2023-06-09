import 'package:dailynews/helper/news_data.dart';
import 'package:dailynews/model/article_model.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../model/category_model.dart';
import 'package:dailynews/helper/category_data.dart';
import 'package:http/http.dart ' as http;

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //get our categories list
   List<CategoryModel> categories=[];
   List<ArticleModel> articles=[];
   bool _loading=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     getCategories();
    getNews();
  }
  getNews() async{
    News newsclass=News();
    await newsclass.getNews();
    articles=newsclass.news;

      setState(() {
        _loading= false;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
         backgroundColor: Colors.white,
          centerTitle: true,
          title: const Row(
           mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget> [
               Text("Flutter ", style: TextStyle(color: Colors.blueAccent),),
               Text("NewsApp" , style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
      //category widgets
      body: _loading? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ):Container(
        //height: 70.0,
        child: Column(
          children: <Widget>[
            ///Category
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 90.0,
                child: ListView.builder(
                  itemCount: getCategories().length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index){
                    return CategoryTile(
                      imageUrl: getCategories()[index].imageUrl,
                      categoryName: getCategories()[index].categoryName,
                    );
                    }
                ),
              ),
            ),
            ///Blogs
             Container(
               child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: articles.length,
                   itemBuilder: (context,index){
                     return BlogTile(
                         imageUrl: articles[index].urlToImage,
                         title: articles[index].title,
                         descriptions: articles[index].description,
                     );}
               ),
             ),
          ],
        ),
      ),
    );
  }
}
class CategoryTile extends StatelessWidget {

  final imageUrl, categoryName;
  CategoryTile({this.categoryName, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
          children: <Widget>[

            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl, width: 120, height: 60, fit: BoxFit.cover)),
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,),
              //color: Colors.black26,
                child: Text(categoryName, style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
            )

          ],
        ),
      ),
    );
  }
}
// the finshed of title part and then body part the doing

class BlogTile extends StatelessWidget {
  //const BlogTile({super.key});
  final String imageUrl, title, descriptions;
  BlogTile({required this.imageUrl, required this.title, required this.descriptions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(imageUrl),
          Text(title),
          Text(descriptions)
        ],
      ),
    );
  }
}

