class ZConfig{
  bool isDebug = !bool.fromEnvironment('dart.vm.product');

  String appName({String appName = 'APP'}) => isDebug ? '$appName(debug)' : appName;
}