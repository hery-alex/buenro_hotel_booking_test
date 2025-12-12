import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class BuenroEnv {
  @EnviedField(varName: 'SERP_API_KEY',obfuscate: true)
  static final String apiKey = _BuenroEnv.apiKey;
}
