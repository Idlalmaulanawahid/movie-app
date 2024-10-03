import 'package:flutter/material.dart';
import 'package:movie_app/common/app-colors.dart';
import 'package:movie_app/common/app-font.dart';
import 'package:movie_app/common/app-images.dart';
import 'package:movie_app/pages/detail_movie.dart';

class ListMoviePage extends StatelessWidget {
  const ListMoviePage({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(AppImages.movie1),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Popular',
                style: redTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector.new(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailMoviePage(),
                        ),
                      );
                    },
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage(AppImages.movie2),
                          width: 200,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Image(
                          image: AssetImage(AppImages.movie3),
                          width: 200,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Image(
                        image: AssetImage(AppImages.movie4),
                        width: 150,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage(AppImages.movie5),
                        width: 150,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage(AppImages.movie6),
                        width: 150,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
