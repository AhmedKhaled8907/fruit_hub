import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/custom_failure.dart';
import 'package:fruit_hub/core/helper/back_end_points.dart';
import 'package:fruit_hub/core/products/data/models/product_model.dart';
import 'package:fruit_hub/core/products/domain/entities/product_entity.dart';
import 'package:fruit_hub/core/products/domain/repos/product_repo.dart';
import 'package:fruit_hub/core/services/database_service.dart';

class ProductRepoImpl extends ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl(this.databaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    var data = await databaseService.getData(
            path: BackEndPoints.getProducts,
            query: {'limit': 10, 'orderBy': 'sellingCount', 'descending': true})
        as List<Map<String, dynamic>>;

    try {
      List<ProductEntity> products = data
          .map(
            (e) => ProductModel.fromJson(e).toEntity(),
          )
          .toList();
      return right(products);
    } catch (e) {
      return left(
        ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    var data = await databaseService.getData(path: BackEndPoints.getProducts)
        as List<Map<String, dynamic>>;

    try {
      List<ProductEntity> products = data
          .map(
            (e) => ProductModel.fromJson(e).toEntity(),
          )
          .toList();
      return right(products);
    } catch (e) {
      return left(
        ServerFailure('لقد حدث خطأ ما. حاول مرة أخرى'),
      );
    }
  }
}
