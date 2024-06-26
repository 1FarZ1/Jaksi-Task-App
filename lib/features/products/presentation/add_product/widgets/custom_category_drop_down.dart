import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/consts/app_colors.dart';
import '../../products_home/categories/categories_provider.dart';

class CustomCategoryDropDown extends HookConsumerWidget {
  const CustomCategoryDropDown({super.key, required this.onChanged});

  final void Function(int?) onChanged;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('التصنيف',
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          DropdownButtonFormField(
            value: 1,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.grey,
                ),
              ),
            ),
            items: [
              ...ref
                  .watch(categoriesProvider)
                  .skip(1)
                  .map((e) {
                return DropdownMenuItem(
                  value: e.id,
                  child: Text(e.name),
                );
              }),
            ],
            icon: const Icon(Icons.arrow_drop_down_circle_outlined),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
