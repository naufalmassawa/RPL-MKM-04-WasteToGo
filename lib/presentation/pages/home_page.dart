import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waste_to_go/presentation/blocs/page_and_kategory_cubit.dart';
import 'package:waste_to_go/presentation/pages/category_all_page.dart';
import 'package:waste_to_go/presentation/pages/category_expired_page.dart';
import '../blocs/auth_bloc.dart';
import '../blocs/product_bloc.dart';

import '../utils/constants.dart';
import '../widgets/custom_category.dart';
import '../widgets/custom_text_field.dart';
import 'category_free_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<ProductBloc>().add(
            const ProductEvent.getAllProduct(),
          );
      context.read<GetFreeProductBloc>().add(
            const GetFreeProductEvent.getFreeProduct(),
          );

      context.read<GetExpiredProductBloc>().add(
            const GetExpiredProductEvent.getExpiredProduct(),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildSearchBar() => CustomTextField(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: SvgPicture.asset(
              'assets/search.svg',
              colorFilter: const ColorFilter.mode(
                Colors.black54,
                BlendMode.srcIn,
              ),
            ),
          ),
          hintText: "Search food, drinks, etc",
          controller: searchController,
        );

    Widget buildKategory() => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: const [
              SizedBox(width: 2),
              CustomCategory(
                title: "Semua",
                index: 0,
              ),
              CustomCategory(
                title: "Gratis",
                index: 1,
              ),
              CustomCategory(
                title: "Expired",
                index: 2,
              ),
            ],
          ),
        );

    Widget headerTitle() => SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return SizedBox(
                  child: state.maybeWhen(
                    loaded: (user) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: kSubtitle,
                        ),
                        Text(
                          "${user?.username}",
                          style: kHeading6,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: buildSearchBar(),
                        ),
                        buildKategory(),
                        const SizedBox(height: 5),
                      ],
                    ),
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
            ),
          ),
        );

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const CategoryAllPage();
        case 1:
          return const CategoryFreePage();
        case 2:
          return const CategoryExpiredPage();
        default:
          return const CategoryAllPage();
      }
    }

    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: BlocBuilder<CategoryCubit, int>(
        builder: (context, state) {
          return Column(
            children: [
              headerTitle(),
              Expanded(
                child: buildContent(state),
              )
            ],
          );
        },
      ),
    );
  }
}
