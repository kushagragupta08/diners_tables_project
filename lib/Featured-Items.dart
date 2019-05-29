import "package:flutter/material.dart";
//import 'CategoriesScreen.dart';
//import 'NamedSourceArticles.dart';

class ListTest extends StatefulWidget {
  @override
  _ListTestState createState() => new _ListTestState();
}

class _ListTestState extends State<ListTest> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _id;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          key: _scaffoldKey,
          // appBar: new AppBar(title: new Text("List"),),
          body: ListView(
            children: <Widget>[
              /*  SizedBox(
                  height: 50.0,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Text(
                      'FEATURED ITEMS',
                      style: TextStyle(
                        fontFamily: 'Roboto Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  )),
             */
              Container(
                padding: EdgeInsets.only(
                    top: 0.0, bottom: 0.0, right: 1.0, left: 1.0),
                height: 250.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                      onTap: () {
                        //print("Item Tapped is : $index");
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          // return NamedSourceArticle(index,'popular');
                        }));
                      },
                      child: Container(
                        height: 100.0,
                        child: items[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }

  List<Widget> items = [
    listItem(
        'https://moadrupalweb.blob.core.windows.net/moadrupalweb/original/5571_BurgerKing_HeroImage.jpg',
        'Overloaded Burger',
        'Rs 250.0'),
    listItem(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8LPaFKhkCQI_SXNs8YkOF_RbJasA-JrPNcWAsBOT6uszgWOP5uw',
      'Noodles Samosa',
      'Rs 250.0',
    ),
    listItem(
        'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2017/10/3/0/FNM_110117-Insert-Opener-2_s4x3.jpg.rend.hgtvcom.1280.960.suffix/1507047894789.jpeg',
        'Rice Dish',
        'Rs 250.0'),
    listItem(
        'https://prods3.imgix.net/images/articles/2017_05/nonfeatured-traditional-mexican-foods.jpg?auto=format%2Ccompress&ixjsv=2.2.3&w=670',
        'Chicken',
        'Rs 250.0'),
    listItem(
        'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/5/4/0/FNM_060111-WN-Dinners-004_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371597499905.jpeg',
        'Burger',
        'Rs 250.0'),
    listItem(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7_Jsah1ZU8Kci0PO1m_868n3wm9WLGdTVlK5FAb-M1gVXuV0Q',
        'Burger',
        'Rs 250.0'),
  ];

/*

  List<Widget> technology = [
    listItem(
        'http://img.app.kiwi/icon/0CIEAQQQfT06R5WJEMiDycx3PK8vcmiIy1rSiS4OuX9HoEr5ceW-ScseQA-mN5HgdcA=w300',
        'Tech Crunch'),
    listItem(
        'https://icon-locator.herokuapp.com/icon?url=http://www.techradar.com&size=70..120..200',
        'Tech Radar'),
    listItem(
        'http://a1156.phobos.apple.com/us/r30/Purple6/v4/db/34/d8/db34d817-03bb-9824-91fc-c63f60224354/mzl.ospcjuyd.png',
        'Engadget'),
    listItem(
        'https://cdn4.iconfinder.com/data/icons/socialcones/508/HackerNews-512.png',
        'Hacker News'),
    listItem('https://pmcvariety.files.wordpress.com/2015/05/recode.jpg?w=720',
        'Recode'),
  ];

  List<Widget> entertainment = [
    listItem(
        'https://icon-locator.herokuapp.com/icon?url=https://www.buzzfeed.com&size=70..120..200',
        'Buzzfeed'),
    listItem(
        'https://scontent.fdel19-1.fna.fbcdn.net/v/t1.0-9/30124775_3470850839641306_6453993011478003712_n.png?_nc_cat=1&_nc_ht=scontent.fdel19-1.fna&oh=a5875bef2cf236bd899fc4f34f99ae61&oe=5CBE3674',
        'Daily Mail'),
    listItem(
        'https://static1.squarespace.com/static/58eac4d88419c2d993e74f57/t/58f5377f4402434fa8edd475/1492465539095/',
        'Entertain Weekly'),
    listItem(
        'https://lh3.ggpht.com/OqGdWYoTCOlPA-Stme4WnIShYL4LuPObiCodfNbk3mpkawEol9Bx9Ga2r_I83PVlZw=w300',
        'MTV News'),
    listItem(
        'https://cdn1.vox-cdn.com/uploads/chorus_asset/file/8402075/941450_609208285758470_875871287_n.0.png',
        'Polygon'),
  ];

  List<Widget> business = [
    listItem(
        'https://fpgroup.foreignpolicy.com/wp-content/uploads/2013/05/TheEconomistLogo.jpg',
        'The Economist'),
    listItem(
        'https://icon-locator.herokuapp.com/icon?url=http://fortune.com&size=70..120..200',
        'Fortune'),
    listItem(
        'https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1487971691/op5cpcljulrjqwsiig6f.png',
        'Business Insider'),
    listItem('https://apprecs.org/ios/images/app-icons/256/06/398018310.jpg',
        'CNBC News'),
    listItem(
        'https://pbs.twimg.com/profile_images/877097420882034689/MTfB8m72_400x400.jpg',
        'Financial Post'),
  ];

*/

  static Widget listItem(String imgPath, String name, String price) {
    return SizedBox(
        height: 270.0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 5.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 150.0,
                width: 170.0,
                //margin: EdgeInsets.only(left: 20.0),
                //width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                      //bottomLeft: Radius.circular(5.0),
                      //bottomRight: Radius.circular(5.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(imgPath),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    name,
                    maxLines: 1,
                    //softWrap: true,
                    //overflow: Overflow.clip,
                    style: TextStyle(
                      fontFamily: 'PlayFairDisplay Regular',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(children: <Widget>[
                Text(
                  price,
                  maxLines: 1,
                  //softWrap: true,
                  //overflow: Overflow.clip,
                  style: TextStyle(
                    fontFamily: 'PlayFairDisplay Regular',
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  width: 90.0,
                  height: 35.0,
                  margin: EdgeInsets.only(
                    left: 10.0,
                    // right: 2.0,
                  ),
                  padding: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                )
              ])
            ],
          ),
        ));
  }
}

/*onTap:(){
                setState((){
                  _id = index; //if you want to assign the index somewhere to check
                });
               // _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("You clicked item number $_id")));
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)
                {
                  return CategoriesScreen(index);
                }
                )
              );
              },
              */
