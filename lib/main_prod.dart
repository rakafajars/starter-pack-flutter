import 'main.dart';
import 'flavors.dart';

void main() async {
  F.setEnvironment(
    Flavor.PROD,
  );
  await mainCommon();
}
