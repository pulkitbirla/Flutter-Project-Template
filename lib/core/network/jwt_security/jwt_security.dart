import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../errors/failure.dart';


class Config {
  static String? jwtSecretKey = dotenv.env["SECRET_KEY"];
  static String? jwtAlgorithm = dotenv.env["ALGORITHM"];
}

class JWTSecurity {
  static String jwtEncode() {
    try {
      // Create a payload
      var payload = {
        "type": "web",
        "version": "v0.0.1",
        "session_id": null,
        "session_id_exp": null,
        "admin": false,
        "iat": DateTime.now().millisecondsSinceEpoch - 100,
      };

      // Create a JWT
      final jwt = JWT(payload);

      // Sign the JWT with a secret key
      final token = jwt.sign(SecretKey(Config.jwtSecretKey!));

      var bearer = 'Bearer $token';
      if (kDebugMode) {
        print(bearer);
      }

      return bearer;
    } catch (error) {
      throw UnauthorisedException("Error in JWT.");
    }
  }

}