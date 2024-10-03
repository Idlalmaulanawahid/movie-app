import 'package:flutter/material.dart';
import 'package:movie_app/common/app-colors.dart';
import 'package:movie_app/common/app-font.dart';
import 'package:movie_app/common/app-images.dart';

class DetailMoviePage extends StatefulWidget {
  const DetailMoviePage({super.key});

  @override
  State<DetailMoviePage> createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.6, 1],
            colors: [AppColors.mainBaseColor, AppColors.secondaryColor],
          ),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  'Netflix',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: bold500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: const Image(
                                  image: AssetImage(AppImages.iconVideo),
                                  width: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  '2022',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: bold500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: const Image(
                                  image: AssetImage(AppImages.iconCalendar),
                                  width: 20,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  '9.3',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: bold500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: const Image(
                                  image: AssetImage(AppImages.iconStar),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Image(
                          image: AssetImage(AppImages.movie7),
                          height: 520,
                          width: 330,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'KINGDOM',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 30,
                                    fontWeight: bold700,
                                  ),
                                ),
                                Text(
                                  'Robert Pattinson',
                                  style: tertiaryTextStyle.copyWith(
                                    fontSize: 17,
                                    fontWeight: bold500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      // width: 0,
                                      padding:
                                          EdgeInsets.only(left: 16, right: 16),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(28, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Action',
                                          style: tertiaryTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: bold500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      // width: 0,
                                      padding:
                                          EdgeInsets.only(left: 16, right: 16),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(28, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Crime',
                                          style: tertiaryTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: bold500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Color.fromARGB(50, 158, 158, 158),
                                  height: 50,
                                ),
                                Text(
                                  'Storyline',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: bold700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text:
                                        'Set in the Joseon period. The king falls ill to smallpox and rumors start to spread that he has actually died. Meanwhile, Crown Prince Lee Chang is labeled a traitor by the Haewon .. More',
                                    style: tertiaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: bold500,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' More',
                                        style: redTextStyle.copyWith(
                                          fontSize: 12,
                                          fontWeight: bold500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            height: 280,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(28, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                const Center(
                                  child: Image(
                                    image: AssetImage(AppImages.arrowTop),
                                    width: 15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Center(
                                  child: Image(
                                    image: AssetImage(AppImages.arrowTop2),
                                    width: 15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Center(
                                  child: Image(
                                    image: AssetImage(AppImages.arrowTop3),
                                    width: 15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    vertical: 13,
                                    horizontal: 13,
                                  ),
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFE4821),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Watch',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 24,
                                          fontWeight: bold700,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 15,
                right: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(34, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Image(
                            image: AssetImage(AppImages.arrowLeft),
                            width: 13,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(50, 20, 18, 18),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Center(
                        child: Image(
                          image: AssetImage(AppImages.iconMovie),
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
