import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class RecommendTopItem extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new RecommendTopItemState();
  }

}

class RecommendTopItemState extends State<RecommendTopItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemCount: 3,
        pagination: new SwiperPagination(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            builder: DotSwiperPaginationBuilder(
                size: 8.0,
                space: 4.0,
                activeSize: 8.0,
                color: Colors.grey,
                activeColor: Color(0xFFCE3433)
            )),
        itemBuilder: itemBuilder,
        control: new SwiperControl(),
        autoplay: true,
        scrollDirection: Axis.horizontal,
        onTap: (index) => debugPrint("点击 => $index"),
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    return Container(
        padding: const EdgeInsets.fromLTRB(6.0, 10.0, 6.0, 10.0),
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: new Image.asset("images/cover_header.png", width: MediaQuery
              .of(context)
              .size
              .width, fit: BoxFit.fill
          ),
        )
    );
  }

}
