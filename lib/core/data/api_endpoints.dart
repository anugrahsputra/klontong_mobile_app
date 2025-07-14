abstract class ApiEndpoints {
  static String get _baseUrl => "https://reqres.in";
  static String get _productBaseUrl =>
      "https://crudcrud.com/api/CRUD_API_KEY";

  static String get login => "$_baseUrl/api/login";
  static String get register => "$_baseUrl/api/register";

  static String get product => "$_productBaseUrl/products";
  static String get productById => "$_productBaseUrl/products/";
}