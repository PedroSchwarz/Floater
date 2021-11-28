part of floater;

mixin FloaterNavigator {
  final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  Future<dynamic> to(String routeName, {dynamic arguments}) {
    return _key.currentState!.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> offAll(String routeName, {dynamic arguments}) {
    return _key.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  void offAllUntil(String routeName) {
    return _key.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  void back(String routeName) {
    return _key.currentState!.pop();
  }
}
