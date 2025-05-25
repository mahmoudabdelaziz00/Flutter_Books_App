import 'package:books_app/Features/home/presentation/views/widgets/boo_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
