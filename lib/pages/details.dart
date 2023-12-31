import 'package:flutter/material.dart';

import '../model/categorymodel.dart';
import 'package:share/share.dart';

class Details extends StatefulWidget {
  const Details({super.key,required this.newarticle });
   final Article newarticle;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text("Read More"),
          onPressed: () {
            
          }),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.newarticle.urlToImage.toString()))
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  widget.newarticle.title.toString(),
                  maxLines: 1,
                  style: const TextStyle(fontSize: 18),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.newarticle.publishedAt.toString()
                      // 'Published At:${ DateFormat('EEE MMM d, yyyy h:mm a').format(widget.newarticle.publishedAt?.toLocal(). )}'),
                      ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      
                      Share.share(widget.newarticle.url.toString())
                      ;
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(widget.newarticle.content.toString()),
            )

            // Container(
            //   width: MediaQuery.sizeOf(context).width * 1,
            //   height: 700,
            //   color: Colors.white,
            //   child: Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: CustomRichText(
            //         text: widget.newarticle.content.toString(),
            //         textStyle:
            //             const TextStyle(color: Colors.black, fontSize: 18),
            //         readMoreLessModel: ReadMoreLessModel(
            //             trimLines: 3,
            //             readLessText: 'read less',
            //             readMoreText: 'read more'),
            //       )),
            // )
          ],
        ),
      ),
    ));
  }
}