import 'package:cached_network_image/cached_network_image.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          NewsCard(
            headline:
                "WikiLeaks founder Julian Assange returns to Australia a free man",
            body:
                "WikiLeaks founder Julian Assange returned to his homeland Australia aboard a charter jet on Wednesday, hours after pleading guilty to obtaining and publishing U.S. military secrets in a deal with Justice Department prosecutors that concludes a drawn-out legal saga.The criminal case of international intrigue, which had played out for years, came to a surprise end in a most unusual setting with Mr. Assange, 52, entering his plea in a U.S. district court in Saipan, the capital of the Northern Mariana Islands. The American commonwealth in the Pacific is relatively close to Mr. Assange’s native Australia and accommodated his desire to avoid entering the continental United States.",
            imageUrl:
                "https://th-i.thgim.com/public/incoming/ma5082/article68335836.ece/alternates/LANDSCAPE_1200/Julian_Assange_WikiLeaks_83123.jpg",
            newsUrl:
                "https://www.thehindu.com/news/international/wikileaks-founder-julian-assange-returns-to-australia-a-free-man/article68335815.ece",
          )
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String headline;
  final String body;
  final String imageUrl;
  final String newsUrl;
  const NewsCard(
      {super.key,
      required this.headline,
      required this.body,
      required this.imageUrl,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 8,
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                headline,
                style: Themes.style
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                maxLines: 3,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: CachedNetworkImage(imageUrl: imageUrl),
              ),
              Text(
                body,
                style: Themes.style.copyWith(fontSize: 15),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  customButton(
                      borderRadius: 5,
                      text: "Read more",
                      onTap: () {},
                      width: 120,
                      height: 40),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
