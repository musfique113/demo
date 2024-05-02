// import 'package:get/get.dart';

//
// class PopularProductController extends GetxController {
//   final ProductRepository _productRepository;
//
//   PopularProductController(this._productRepository);
//
//   bool _inProgress = false;
//
//   late Failure _failure;
//
//   List<Product> _popularProductList = [];
//
//   List<Product> get popularProductList => _popularProductList;
//
//   bool get inProgress => _inProgress;
//
//   Failure get failure => _failure;
//
//   Future<bool> getPopularProduct() async {
//     bool isSuccess = false;
//     _inProgress = true;
//     update();
//     final response =
//     await _productRepository.getPopularProductData();
//     response.fold((error) {
//       _failure = error;
//     }, (listOfPopularProduct) {
//       _popularProductList = listOfPopularProduct;
//       isSuccess = true;
//     });
//     _inProgress = false;
//     update();
//     return isSuccess;
//   }
// }