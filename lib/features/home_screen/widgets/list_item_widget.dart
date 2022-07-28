import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/core/models/creator_summary.dart';
import 'package:marvel_app/resources/dimens/list_item_dimens.dart';
import 'package:marvel_app/resources/strings/list_item_strings.dart';

import '../../../core/models/comic.dart';

class ListItemWidget extends StatelessWidget{
  final Comic comic;
  ListItemWidget({required this.comic});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(ListItemDimens.paddingAround),
      child: InkWell(
        onTap: () => Modular.to.pushNamed("/details/", arguments: comic),
        child: Card(
          color: Colors.white,
          elevation: 5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Hero(
                tag: _createHeroTag(),
                child: Container(
                  height: ListItemDimens.imageHeight,
                  width: ListItemDimens.imageWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ListItemDimens.imageCornerRadius),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              getImageUrl(comic)
                          )
                      )
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(ListItemDimens.aroundTextPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: ListItemDimens.spaceBetweenTexts,),
                      Text(
                        comic.title ?? ListItemStrings.noTitle,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ListItemDimens.titleSize,
                          color: Colors.black
                        ),
                      ),
                      const SizedBox(height: ListItemDimens.spaceBetweenTexts,),
                      Text(
                        getAuthorText(comic),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: ListItemDimens.authorSize,
                          color: Color.fromRGBO(105, 105, 105, 1)
                        ),
                      ),
                      const SizedBox(height: ListItemDimens.spaceBetweenTexts,),
                      Text(
                        getDescriptionText(comic),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: ListItemDimens.descriptionSize,
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
      ),
    );
  }

  String getAuthorText(Comic comic){
    bool writerFound = false;

    if (comic.creators != null && comic.creators?.items != null && comic.creators?.items?.isNotEmpty == true){
      for (CreatorSummary creator in comic.creators!.items!){
        if (!writerFound){
          if (creator.role! == "writer"){
            writerFound = true;
            return "${ListItemStrings.writtenBy} ${creator.name.toString()}";
          }
        }
      }
      return "${ListItemStrings.createdBy} ${comic.creators!.items![0].name}";
    }
    return ListItemStrings.noAuthor;
  }

  String getDescriptionText(Comic comic){
    if (comic.description == null || comic.description == ""){
      return ListItemStrings.noDescription;
    } else{
      return comic.description.toString();
    }
  }

  String getImageUrl(Comic comic){
    if (comic.thumbnail != null){
      if (comic.thumbnail!.extension != null && comic.thumbnail!.path != null){
        return "${comic.thumbnail!.path!}${comic.thumbnail!.extension!}";
      }
    }
    return ListItemStrings.noImageUrl;
  }

  String _createHeroTag(){
    return "front_cover_${comic.id}";
  }
}