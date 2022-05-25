import 'package:flutter/material.dart';


import '../../model/user_model.dart';

class DetailScreen extends StatefulWidget {
  final Drinks? userModel;
  const DetailScreen({Key? key, this.userModel}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                                      child: Image.network(
                                        widget.userModel?.strDrinkThumb?? '',
                                        height: 200.0,
                                        width: 300.0,
                                        fit: BoxFit.cover,
                                         
                                               
                                      ),borderRadius: BorderRadius.circular(25.0),
                                    ),
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     widget.userModel?.strDrinkThumb ?? '',
              //   ),
              // ),
              Text(
                 ' ${widget.userModel?.strDrink?? ''}',
                textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13.0,overflow: TextOverflow.ellipsis),
              ),
              Text(
               ' ${widget.userModel?.strCategory ?? ''}',
                textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13.0,overflow: TextOverflow.ellipsis),
              ),
              Text(
               
                    ' ${widget.userModel?.strAlcoholic ?? ''}',
                textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13.0,overflow: TextOverflow.ellipsis),
              ),
              Text(
                  ' ${widget.userModel?.strGlass ?? ''}', textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13.0,overflow: TextOverflow.ellipsis),),
            
            ],
          ),
        ),
      ),
    );
  }
}
