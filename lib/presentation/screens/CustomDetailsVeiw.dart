import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/data/models/book_model/book_model.dart';
import 'package:booky_app/presentation/Cubits/SmilarBooskCubit/SmilarBooksCubit.dart';
import 'package:booky_app/presentation/widgets/BooksRating.dart';
import 'package:booky_app/presentation/widgets/CustomButton.dart';
import 'package:booky_app/presentation/widgets/CustomDetailsScreenAppbar.dart';
import 'package:booky_app/presentation/widgets/CustomListVeiwItem.dart';
import 'package:booky_app/presentation/widgets/SimilerBooksListVeiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDetailsScreen extends StatefulWidget {
  const CustomDetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<CustomDetailsScreen> createState() => _CustomDetailsScreenState();
}

class _CustomDetailsScreenState extends State<CustomDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SmilarBooksCubit>(
      context,
    ).fetchSmilarBooks(category: widget.bookModel.volumeInfo.categories![0]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var weight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                CustomDetailsScreenAppbar(),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: weight * 0.25),
                  child: CustomListVeiwItem(
                    imageUrl: widget.bookModel.volumeInfo.imageLinks!.thumbnail,
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "${widget.bookModel.volumeInfo.title}",
                  style: Styles.textStyle30,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 6),

                Opacity(
                  opacity: .7,
                  child: Text(
                    "${widget.bookModel.volumeInfo.authors![0]}",
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(height: 24),
                BooksRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: 5,
                  ratingCount: 200,
                ),
                SizedBox(height: 36),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          backgroundColor: Colors.white,
                          text: "Free",
                          fontSize: 16,
                          textColor: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          onPressed: () async {
                            final Uri uri = Uri.parse(widget.bookModel.volumeInfo.previewLink!);

                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            }
                          },
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                          backgroundColor: Color(0xffEF8262),
                          text: "PreView",
                          fontSize: 16,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(child: SizedBox(height: 50)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),

                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You Can Also Like",
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SimilerBooksListVeiw(),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
