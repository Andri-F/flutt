import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Masker Hitam",
      "picture": "images/more_pics/masker.jpg",
      "old_price": "IDR 3,999",
      "price": "IDR 3,999",
    },
    {
      "name": "Jeans",
      "picture": "images/more_pics/jeans.jpg",
      "old_price": "IDR 88,000",
      "price": "IDR 88,000",
    },
    {
      "name": "Momogi",
      "picture": "images/more_pics/momogi.jpg",
      "old_price": "IDR 20,000",
      "price": "IDR 20,000",
    },
    {
      "name": "Samsung",
      "picture": "images/more_pics/samsung.jpg",
      "old_price": "IDR 2,500,000",
      "price": "IDR 2,500,000",
    },
    {
      "name": "Sunsilk",
      "picture": "images/more_pics/sunsilk.jpg",
      "old_price": "IDR 20,999",
      "price": "IDR 20,999",
    },
    {
      "name": "Kotak Bekal",
      "picture": "images/more_pics/kotak.jpg",
      "old_price": "IDR 10,000",
      "price": "IDR 10,000",
    },
    {
      "name": "Spidol",
      "picture": "images/more_pics/spidol.jpg",
      "old_price": "IDR 8,000",
      "price": "IDR 8,000",
    },
    {
      "name": "Pensil",
      "picture": "images/more_pics/pensil.jpg",
      "old_price": "IDR 1,000",
      "price": "IDR 1,000",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        //passing product content to product_details page
                        product_detail_name: prod_name,
                        product_detail_picture: prod_picture,
                        product_detail_old_price: prod_old_price,
                        product_detail_new_price: prod_price,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        prod_price,
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
