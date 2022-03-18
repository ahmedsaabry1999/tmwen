class ApiRoutes {
  static const String baseUrl = 'http://3.72.118.166/api';

  static const String login = '$baseUrl/login/';
  static const String register = '$baseUrl/register/';

  static const String profile = '$baseUrl/profile/';

  static const String vendors = '$baseUrl/vendors/';
  static String vendorDetails(String token) => '$baseUrl/vendor/$token';
  static String updateVendor(String token) => '$baseUrl/vendors/$token';
  static String deleteVendor(int vendorId) => '$baseUrl/vendors/$vendorId';

  static String vendorProducts(int id) => '$baseUrl/vendor/products/$id';
  // static String productDetails(int prodId) => '$baseUrl/vendor/product/$prodId';
  static String editProduct(int prodId) => '$baseUrl/vendor/product/$prodId';
  static String deleteProduct(int prodId) => '$baseUrl/vendor/product/$prodId';

  static const String cities = '$baseUrl/country/1/';

  static const String cartItems = '$baseUrl/cart/';
  static const String addProductToCart = '$baseUrl/cart-details/';
  static const String changeCartQuantity = '$baseUrl/cart-details/';
  static const String deleteCartItem = '$baseUrl/cart-product/';
}
