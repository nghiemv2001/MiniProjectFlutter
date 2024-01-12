import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({Key? key}) : super(key: key);

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  late PageController _pageController;
  void _onScroll() {
    print("SSSS");
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              image: "assets/images/Day2_1.jpg",
              title: "PHU QUOC",
              description:
                  "Phú Quốc, viên ngọc của Việt Nam, khung cảnh thơ mộng với bãi biển dịu dàng, cát trắng mịn, nước biển trong xanh kỳ lạ, hoàng hôn lãng mạn kết thúc một ngày tuyệt vời."),
          makePage(
              image: "assets/images/Day2_2.jpg",
              title: "HA GIANG",
              description:
                  "Vùng đất cao nguyên núi non hùng vĩ của Hà Giang thu hút du khách bởi cảnh quan thiên nhiên tuyệt vời và văn hóa dân tộc đa dạng. Du khách có thể khám phá vùng đất này qua các cung đường đèo đẹp như Mã Pí Lèng, thăm các bản làng dân tộc, và thưởng ngoạn những cánh đồng lúa bậc thang độc đáo."),
          makePage(
              image: "assets/images/Day2_3.jpg",
              title: "VINH HA LONG",
              description:
                  "Với vẻ đẹp hùng vĩ của những hòn đảo đá vôi lớn nổi tiếng, Hạ Long là điểm đến tuyệt vời. Du khách thường đắm chìm trong cảnh quan thiên nhiên hùng vĩ của vịnh, tham gia các chuyến tham quan thuyền kayak và khám phá hang động kỳ diệu."),
          makePage(
              image: "assets/images/Day2_4.jpg",
              title: "SAI GON",
              description:
                  "Là trái tim sôi động của Việt Nam, Sài Gòn là thành phố với sự kết hợp hài hòa giữa di sản lịch sử và sự hiện đại. Đây là nơi bạn có thể thưởng thức ẩm thực phong phú, mua sắm tại các chợ đêm hoặc thăm các điểm du lịch lịch sử như Dinh Thống Nhất và Bảo tàng Mỹ Thuật."),
        ],
      ),
    );
  }

  Widget makePage({image, title, description}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.1),
              Colors.white.withOpacity(0.1)
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    "1",
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 25,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 25,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 25,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 25,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "4.0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "(2300)",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      description,
                      style: TextStyle(color: Colors.white38),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
