abstract class ApiEndpoints {
  static String get _baseUrl => "https://reqres.in";
  static String get _productBaseUrl =>
      "https://crudcrud.com/api/eac9572521e348f6b81bf1385967d49c";

  static String get login => "$_baseUrl/api/login";
  static String get register => "$_baseUrl/api/register";

  static String get product => "$_productBaseUrl/products";
  static String get productById => "$_productBaseUrl/products/";
}