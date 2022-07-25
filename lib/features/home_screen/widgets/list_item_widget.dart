import 'package:flutter/material.dart';
import 'package:marvel_app/core/models/creator_summary.dart';

import '../../../core/models/comic.dart';

class ListItemWidget extends StatelessWidget{
  final Comic comic;
  ListItemWidget({required this.comic});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 200,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          comic.thumbnail!.getPath()
                      )
                  )
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 10,),
                    Text(
                      comic.title.toString(),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Text(
                      getAuthorText(comic),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Color.fromRGBO(105, 105, 105, 1)
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Text(
                      getDescriptionText(comic),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  String getAuthorText(Comic comic){
    bool writerFound = false;
    if (comic.creators!.items!.isEmpty){
      return "No author was given.";
    } else{
      for (CreatorSummary creator in comic.creators!.items!){
        if (!writerFound){
          if (creator.role! == "writer"){
            writerFound = true;
            return "Written by ${creator.name.toString()}";
          }
        }
      }
      return "Created by ${comic.creators!.items![0]}";
    }
  }

  String getDescriptionText(Comic comic){
    if (comic.description == null || comic.description == ""){
      return "No description was given.";
    } else{
      return comic.description.toString();
    }
  }
}