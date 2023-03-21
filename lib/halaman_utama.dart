import 'package:flutter/material.dart';
import 'package:quis_prakmobile_abdillahmustamin_123200017/data_buku.dart';
import 'halaman_detail.dart';

class halamanUtama extends StatelessWidget {
  const halamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: ListView.builder(
        itemCount: listBuku.length,
        itemBuilder: (context, index) {
          final DataBuku place = listBuku[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (contex) => halamanDetail(place: place,),),
              );
            },

            child: Card(

              child: Row(

                children: [

                  //gambar
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.height/3,
                    child: Image.network(place.imageLink),
                  ),
                  //text

                  Text(
                      place.title + "\n\n\n",
                      style: TextStyle(
                          fontSize: 25,
                        //fontWeight: FontWeight.bold,
                      )
                  ),
                  Text("\n"),
                  Text(
                      place.author,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
