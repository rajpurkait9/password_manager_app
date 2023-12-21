enum PageStatus { loading, error, empty, idle, networkError, unknown }

extension PageStatusX on PageStatus {
  bool get isLoading => this == PageStatus.loading;
  bool get isError => this == PageStatus.error;
  bool get isEmpty => this == PageStatus.empty;
  bool get isIdle => this == PageStatus.idle;
  bool get isNetworkError => this == PageStatus.networkError;
  bool get isUnknown => this == PageStatus.unknown;
}
