import 'package:flutter/material.dart';
// import http
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String sample = "";
  //**************************************** function name and returned data typ 1
  //void fetchAllProducts()async {}
  void fetchAllProducts() async {
    // ************************************** past code from postman (implementation)2
    var request =
        http.Request('GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("========================== Retrived data");
      print(await response.stream.bytesToString());
    } else {
      print("Error");
      print(response.reasonPhrase);
    }
  }
  // void callOpenAiApi(data (video to data )) async {
  //   // ************************************** past code from postman (implementation)2
  //   var request =
  //       http.Request('POST', Uri.parse('https://fakestoreapi.com/products'));

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  // sample = await response.stream.bytesToString();
  //     print("========================== Retrived data");
  //     print(await response.stream.bytesToString());
  //   } else {
  //     print("Error");
  //     print(response.reasonPhrase);
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // call async function **********************3
    fetchAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Async real example using postman"),
        ),
        body: Container());
  }
}