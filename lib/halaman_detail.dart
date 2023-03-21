import 'package:flutter/material.dart';
import 'package:quis_prakmobile_abdillahmustamin_123200017/data_buku.dart';


class halamanDetail extends StatelessWidget {
  final DataBuku place;
  const halamanDetail({Key? key, required this.place}) : super(key: key);

  void pinjamBuku(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        // automaticallyImplyLeading: false,
        title: Text(place.author),
        // actions: <Widget>[
        //   (!search)
        //       ? IconButton(
        //       icon: Icon(Icons.search),
        //       onPressed: () {
        //         setState(() {
        //           searchTextField = appSearch(
        //               context);
        //           _bgColor = Colors.white;
        //           search = !search;
        //         });
        //       })
        //       : IconButton(
        //       icon: Icon(
        //         Icons.close,
        //         color: Colors.black,
        //       ),
        //       onPressed: () {
        //         setState(() {
        //           list.clear();
        //           list.addAll(items);
        //           _controllerSearch.clear();
        //         });
        //       })
        // ],
      ),
      body: ListView(
        // scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/3,
            height: MediaQuery.of(context).size.height/3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(place.imageLink),
              ],
            ),
          ),
          Text(
              "Judul : " + place.title + "\n" +
              "Penulis : " + place.author + "\n" +
              "Bahasa :" + place.language +"\n" +
              "Negara : " + place.country + "\n" +
              "Jumlah Halaman : " + place.pages.toString() + "\n" +
              "Tahun Terbit : " + place.year.toString() + "\n" +
              "Status : " + place.isAvailable.toString() + "\n",

          ),
          // Text(place.author),
          // Text(place.language),
          // Text(place.country),
          RaisedButton(
            child: Text('Pinjam Buku'),
            color: Colors.lightBlue,
            onPressed: pinjamBuku,
          ),
        ],

      ),
    );
  }
}
