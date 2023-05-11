import 'package:flutter_bloc/flutter_bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}

class CategoryCubit extends Cubit<int> {
  CategoryCubit() : super(0);

  void setCategory(int newValue) {
    emit(newValue);
  }
}
