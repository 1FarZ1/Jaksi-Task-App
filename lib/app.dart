import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/features/products/presentation/products_home/products_view.dart';

import 'consts/app_colors.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        title: 'Task App',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.scaffoldColor),
        debugShowCheckedModeBanner: false,
        home: const ProductsView(),
      ),
    );
  }
}