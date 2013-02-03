part of prediction_v1_5_api_client;

class HostedmodelsResource extends Resource {

  HostedmodelsResource(Client client) : super(client) {
  }

  /**
   * Submit input and request an output against a hosted model.
   *
   * [request] - Input to send in this request
   *
   * [hostedModelName] - The name of a hosted model.
   *
   * [optParams] - Additional query parameters
   */
  Future<Output> predict(Input request, String hostedModelName, {Map optParams}) {
    var completer = new Completer();
    var url = "hostedmodels/{hostedModelName}/predict";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (hostedModelName == null) paramErrors.add("hostedModelName is required");
    if (hostedModelName != null) urlParams["hostedModelName"] = hostedModelName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Output.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TrainedmodelsResource extends Resource {

  TrainedmodelsResource(Client client) : super(client) {
  }

  /**
   * Get analysis of the model and the data the model was trained on.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  Future<Analyze> analyze(String id, {Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels/{id}/analyze";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Analyze.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Delete a trained model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String id, {Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Check training status of your model.
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  Future<Training> get(String id, {Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Training.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Begin training your model.
   *
   * [request] - Training to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<Training> insert(Training request, {Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Training.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List available models.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *
   * [pageToken] - Pagination token
   *
   * [optParams] - Additional query parameters
   */
  Future<List> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels/list";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new List.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Submit model id and request a prediction.
   *
   * [request] - Input to send in this request
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  Future<Output> predict(Input request, String id, {Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels/{id}/predict";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Output.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Add new data to a trained model.
   *
   * [request] - Update to send in this request
   *
   * [id] - The unique name for the predictive model.
   *
   * [optParams] - Additional query parameters
   */
  Future<Training> update(Update request, String id, {Map optParams}) {
    var completer = new Completer();
    var url = "trainedmodels/{id}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Training.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

