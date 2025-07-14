import 'package:flutter_test/flutter_test.dart';
import 'package:klontong_mobile_app/core/data/api_endpoints.dart';

void main() {
  group('ApiEndpoints', () {
    test('login getter should return correct URL', () {
      expect(ApiEndpoints.login, 'https://reqres.in/api/login');
    });

    test('register getter should return correct URL', () {
      expect(ApiEndpoints.register, 'https://reqres.in/api/register');
    });
  });
}
