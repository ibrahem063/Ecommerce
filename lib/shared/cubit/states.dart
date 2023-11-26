abstract class AppStates{}


class AppInitialStates extends AppStates{}
class AppChangeBottomNavBarStates extends AppStates{}
class AppChangeColorIconStates  extends AppStates{}
class EcommerceLodingStates  extends AppStates{}
class EcommerceGetProductsStates  extends AppStates{}
class EcommerceUpditeProductsStates  extends AppStates{}
class EcommerceErrorsProductsStates  extends AppStates{
  final String errors;
  EcommerceErrorsProductsStates (this.errors);
}
class EcommerceAddProductsLikeStates  extends AppStates{}