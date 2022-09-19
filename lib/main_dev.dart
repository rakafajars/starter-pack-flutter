import 'main.dart';
import 'flavors.dart';

void main() async {
  F.setEnvironment(
    Flavor.DEV,
  );

  await mainCommon();
}
