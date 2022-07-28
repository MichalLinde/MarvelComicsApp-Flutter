import 'package:flutter/material.dart';
import 'package:marvel_app/core/models/creator_summary.dart';
import 'package:marvel_app/resources/custom_colors.dart';
import 'package:marvel_app/resources/dimens/details_page_dimens.dart';
import 'package:marvel_app/resources/strings/details_page_strings.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:html/parser.dart';


import '../../core/models/comic.dart';

class DetailsPage extends StatelessWidget{

  final Comic comic;
  DetailsPage({ required this.comic });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          DetailsPageStrings.appBarTitle,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Hero(
            tag: _createHeroTag(),
            child: Image.network(
              getImageUrl(),
              fit: BoxFit.cover,
            ),
          ),
          _buildBottomSheet(),
          _buildMoreButton()
        ],
      )
    );
  }



  Widget _buildBottomSheet(){
    return DraggableScrollableSheet(
      initialChildSize: DetailsPageDimens.initialSheetSize,
      maxChildSize: DetailsPageDimens.maxSheetSize,
      minChildSize: DetailsPageDimens.minSheetSize,
      expand: false,
      builder: (context, controller) => ClipRRect(
        borderRadius: BorderRadius.circular(DetailsPageDimens.sheetCornerRadius),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            controller: controller,
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DetailsPageDimens.sheetTextPadding),
              child: _buildTextColumn(),
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildMoreButton(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: DetailsPageDimens.buttonContainerHeight,
        padding: const EdgeInsets.all(DetailsPageDimens.buttonContainerPadding),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [
                  DetailsPageDimens.buttonContainerGradientStop1,
                  DetailsPageDimens.buttonContainerGradientStop2
                ],
                colors: [
                  Colors.white,
                  Colors.white60,
                ]
            )
        ),
        child: Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: ()=> _launchUrl(),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                minimumSize: MaterialStateProperty.all<Size>(
                    const Size(
                      DetailsPageDimens.buttonWidth,
                      DetailsPageDimens.buttonHeight
                    )
                )
            ),
            child: const Text(
              DetailsPageStrings.moreButtonText,
              style: TextStyle(
                  fontSize: DetailsPageDimens.buttonTextSize,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildTextColumn(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Icon(
                Icons.remove_rounded,
                size: DetailsPageDimens.expandIconSize,
                color: CustomColors.lightGrey,
              ),
            ),
          ],
        ),
        Text(
          getTitle(),
          style: const TextStyle(
              fontSize: DetailsPageDimens.titleTextSize,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        const SizedBox(height: DetailsPageDimens.spaceBetweenTexts),
        Text(
          getAuthors(),
          style: const TextStyle(
              fontSize: DetailsPageDimens.authorTextSize,
              color: CustomColors.regularGrey
          ),
        ),
        const SizedBox(height: DetailsPageDimens.spaceBetweenTexts,),
        Text(
          getDescription(),
          style: const TextStyle(
              fontSize: DetailsPageDimens.descTextSize,
              color: Colors.black
          ),
        ),
        const SizedBox(height: DetailsPageDimens.bottomSpace,)
      ],
    );
  }


  String _parseHtmlString(String htmlString) {
    final text = parse(htmlString);
    if (text.body != null) {
      final String parsedText = parse(text.body!.text).documentElement!.text;
      return parsedText;
    }
    return htmlString;
  }

  String getTitle(){
    if (comic.title != null){
      return comic.title!;
    } else{
      return DetailsPageStrings.noTitle;
    }
  }

  String getAuthors(){
    if (comic.creators != null && comic.creators!.items != null && comic.creators!.items!.isNotEmpty){
      String authors = "";
      for (CreatorSummary creator in comic.creators!.items!){
        if (creator.name != null) {
          authors += "${creator.name}, ";
        }
      }
      return authors.substring(0, authors.length - 2);
    }
    else {
      return DetailsPageStrings.noAuthor;
    }
  }

  String getDescription(){
    if (comic.description != null && comic.description != ""){
      return _parseHtmlString(comic.description!);
    } else{
      return DetailsPageStrings.noDesc;
    }
  }

  String getImageUrl(){
    if (comic.thumbnail != null && comic.thumbnail!.path != null && comic.thumbnail!.extension != null){
      return "${comic.thumbnail!.path!}${comic.thumbnail!.extension!}";
    } else{
      return DetailsPageStrings.basicImageUrl;
    }
  }

  Future<void> _launchUrl() async {
    if (comic.urls != null && comic.urls!.isNotEmpty){
      if (comic.urls![0].url != null){
        String url = comic.urls![0].url!.replaceAll("http", "https");
        if (await canLaunchUrlString(url)){
          await launchUrlString(url, mode: LaunchMode.externalApplication, );
        } else {
          throw "Could not launch url";
        }
      }
    } else{
      throw "Could not launch url";
    }
  }

  String _createHeroTag(){
    return "front_cover_${comic.id}";
  }
}