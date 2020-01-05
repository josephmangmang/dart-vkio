import './api.dart';

/// Streaming class
class Streaming {
  /// API class
  API _api;

  /// Streaming
  Streaming(API api) {
    _api = api;
  }

  toString() {
    return 'Streaming';
  }

  /// Allows to receive data for the connection to Streaming API.
  ///
  /// Params: none
  Future<Map> getServerUrl([Map<String, String> params]) async {
    return _api.request('streaming.getServerUrl', {
      ...?params,
    });
  }

  /// Params:
  ///
  /// `monthly_tier` *(string)*
  Future<Map> setSettings([Map<String, String> params]) async {
    return _api.request('streaming.setSettings', {
      ...?params,
    });
  }
}