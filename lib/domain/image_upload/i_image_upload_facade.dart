import 'package:dartz/dartz.dart';
import '../../infrastructure/models/card/card.dart';
import 'image_upload_failure.dart';

abstract class IImageUploadFacade {
  Future<Either<ImageUploadFailure, SuccessResponseModel>> imageUpload(
    String imagePath,
  );
}
