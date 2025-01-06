import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/custom_failure.dart';
import 'package:fruit_hub/core/products/domain/entities/product_entity.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
}
