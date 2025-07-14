abstract class ApiEndpoints {
  static String get _baseUrl => "https://reqres.in";
  static String get _productBaseUrl =>
      "https://crudcrud.com/api/0f0c57b1a48e4b84983f2345f1cf017e";

  static String get login => "$_baseUrl/api/login";
  static String get register => "$_baseUrl/api/register";

  static String get product => "$_productBaseUrl/products";
  static String get productById => "$_productBaseUrl/products/";
}