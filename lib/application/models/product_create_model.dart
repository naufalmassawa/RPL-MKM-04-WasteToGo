import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductModel extends Equatable {
  final XFile image;
  final String name;
  final String? desc;
  final String? date;
  final double? lat;
  final double? long;

  const CreateProductModel({
    required this.image,
    required this.name,
    this.desc,
    this.date,
    this.lat,
    this.long,
  });

  @override
  List<Object?> get props => [image, name, desc, date, lat, long];
}
