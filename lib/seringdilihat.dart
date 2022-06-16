import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class seringDilihat extends StatelessWidget {
  const seringDilihat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.black,
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)),
                  child: Container(
                    width: 120,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Stack(
                      children: [
                        Positioned(child: Image.asset('assets/', scale: 2),
                        left: 0,
                        top: 0,),
                        Positioned(
                          bottom: 12,
                          left: 12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hero Name',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Deskripsi',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ),
            ),
            Container(
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/',
                    color: Colors.grey[400],
                    scale: 5,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '2',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}