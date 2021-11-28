part of floater;

mixin FloaterRouter {
  final _router = FluroRouter();

  void defineRoute<T>(
    String routeName, {
    required Widget Function(T) builder,
    TransitionType transitionType = TransitionType.fadeIn,
  }) {
    _router.define(
      routeName,
      transitionType: transitionType,
      handler: _handleRoutes<T>(builder),
    );
  }

  Handler _handleRoutes<T>(Widget Function(T) callback) {
    return Handler(
      handlerFunc: (context, _) {
        final arguments =
            T.runtimeType == Null ? Null : context!.settings!.arguments;
        return callback(arguments as T);
      },
    );
  }
}
