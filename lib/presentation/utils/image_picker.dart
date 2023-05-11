import 'package:image_picker/image_picker.dart';

class ImageUpload {
  XFile? _imageFile;

  XFile? get imageFile => _imageFile;

  Future<void> pickImage(ImageSource source) async {
    try {
      final ImagePicker picker = ImagePicker();
      final pickedFile = await picker.pickImage(
        source: source,
        imageQuality: 50,
      );

      if (pickedFile == null) return;
      _imageFile = XFile(pickedFile.path);
    } catch (e) {
      return;
    }
  }

  void dispose() {
    _imageFile = null;
  }
}
