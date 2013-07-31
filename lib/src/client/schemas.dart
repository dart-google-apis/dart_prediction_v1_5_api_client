part of prediction_v1_5_api;

class Analyze {

  /** Description of the data the model was trained on. */
  AnalyzeDataDescription dataDescription;

  /** List of errors with the data. */
  core.List<core.Map<core.String, core.String>> errors;

  /** The unique name for the predictive model. */
  core.String id;

  /** What kind of resource this is. */
  core.String kind;

  /** Description of the model. */
  AnalyzeModelDescription modelDescription;

  /** A URL to re-request this resource. */
  core.String selfLink;

  /** Create new Analyze from JSON data */
  Analyze.fromJson(core.Map json) {
    if (json.containsKey("dataDescription")) {
      dataDescription = new AnalyzeDataDescription.fromJson(json["dataDescription"]);
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].map((errorsItem) => _mapMap(errorsItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modelDescription")) {
      modelDescription = new AnalyzeModelDescription.fromJson(json["modelDescription"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Analyze */
  core.Map toJson() {
    var output = new core.Map();

    if (dataDescription != null) {
      output["dataDescription"] = dataDescription.toJson();
    }
    if (errors != null) {
      output["errors"] = errors.map((errorsItem) => _mapMap(errorsItem)).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (modelDescription != null) {
      output["modelDescription"] = modelDescription.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Analyze */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of the data the model was trained on. */
class AnalyzeDataDescription {

  /** Description of the input features in the data set. */
  core.List<AnalyzeDataDescriptionFeatures> features;

  /** Description of the output value or label. */
  AnalyzeDataDescriptionOutputFeature outputFeature;

  /** Create new AnalyzeDataDescription from JSON data */
  AnalyzeDataDescription.fromJson(core.Map json) {
    if (json.containsKey("features")) {
      features = json["features"].map((featuresItem) => new AnalyzeDataDescriptionFeatures.fromJson(featuresItem)).toList();
    }
    if (json.containsKey("outputFeature")) {
      outputFeature = new AnalyzeDataDescriptionOutputFeature.fromJson(json["outputFeature"]);
    }
  }

  /** Create JSON Object for AnalyzeDataDescription */
  core.Map toJson() {
    var output = new core.Map();

    if (features != null) {
      output["features"] = features.map((featuresItem) => featuresItem.toJson()).toList();
    }
    if (outputFeature != null) {
      output["outputFeature"] = outputFeature.toJson();
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescription */
  core.String toString() => JSON.stringify(this.toJson());

}

class AnalyzeDataDescriptionFeatures {

  /** Description of the categorical values of this feature. */
  AnalyzeDataDescriptionFeaturesCategorical categorical;

  /** The feature index. */
  core.int index;

  /** Description of the numeric values of this feature. */
  AnalyzeDataDescriptionFeaturesNumeric numeric;

  /** Description of multiple-word text values of this feature. */
  AnalyzeDataDescriptionFeaturesText text;

  /** Create new AnalyzeDataDescriptionFeatures from JSON data */
  AnalyzeDataDescriptionFeatures.fromJson(core.Map json) {
    if (json.containsKey("categorical")) {
      categorical = new AnalyzeDataDescriptionFeaturesCategorical.fromJson(json["categorical"]);
    }
    if (json.containsKey("index")) {
      index = (json["index"] is core.String) ? core.int.parse(json["index"]) : json["index"];
    }
    if (json.containsKey("numeric")) {
      numeric = new AnalyzeDataDescriptionFeaturesNumeric.fromJson(json["numeric"]);
    }
    if (json.containsKey("text")) {
      text = new AnalyzeDataDescriptionFeaturesText.fromJson(json["text"]);
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeatures */
  core.Map toJson() {
    var output = new core.Map();

    if (categorical != null) {
      output["categorical"] = categorical.toJson();
    }
    if (index != null) {
      output["index"] = index;
    }
    if (numeric != null) {
      output["numeric"] = numeric.toJson();
    }
    if (text != null) {
      output["text"] = text.toJson();
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeatures */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of the categorical values of this feature. */
class AnalyzeDataDescriptionFeaturesCategorical {

  /** Number of categorical values for this feature in the data. */
  core.int count;

  /** List of all the categories for this feature in the data set. */
  core.List<AnalyzeDataDescriptionFeaturesCategoricalValues> values;

  /** Create new AnalyzeDataDescriptionFeaturesCategorical from JSON data */
  AnalyzeDataDescriptionFeaturesCategorical.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("values")) {
      values = json["values"].map((valuesItem) => new AnalyzeDataDescriptionFeaturesCategoricalValues.fromJson(valuesItem)).toList();
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesCategorical */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (values != null) {
      output["values"] = values.map((valuesItem) => valuesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesCategorical */
  core.String toString() => JSON.stringify(this.toJson());

}

class AnalyzeDataDescriptionFeaturesCategoricalValues {

  /** Number of times this feature had this value. */
  core.int count;

  /** The category name. */
  core.String value;

  /** Create new AnalyzeDataDescriptionFeaturesCategoricalValues from JSON data */
  AnalyzeDataDescriptionFeaturesCategoricalValues.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesCategoricalValues */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesCategoricalValues */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of the numeric values of this feature. */
class AnalyzeDataDescriptionFeaturesNumeric {

  /** Number of numeric values for this feature in the data set. */
  core.int count;

  /** Mean of the numeric values of this feature in the data set. */
  core.num mean;

  /** Variance of the numeric values of this feature in the data set. */
  core.num variance;

  /** Create new AnalyzeDataDescriptionFeaturesNumeric from JSON data */
  AnalyzeDataDescriptionFeaturesNumeric.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("mean")) {
      mean = json["mean"];
    }
    if (json.containsKey("variance")) {
      variance = json["variance"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesNumeric */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (mean != null) {
      output["mean"] = mean;
    }
    if (variance != null) {
      output["variance"] = variance;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesNumeric */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of multiple-word text values of this feature. */
class AnalyzeDataDescriptionFeaturesText {

  /** Number of multiple-word text values for this feature. */
  core.int count;

  /** Create new AnalyzeDataDescriptionFeaturesText from JSON data */
  AnalyzeDataDescriptionFeaturesText.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesText */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesText */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of the output value or label. */
class AnalyzeDataDescriptionOutputFeature {

  /** Description of the output values in the data set. */
  AnalyzeDataDescriptionOutputFeatureNumeric numeric;

  /** Description of the output labels in the data set. */
  core.List<AnalyzeDataDescriptionOutputFeatureText> text;

  /** Create new AnalyzeDataDescriptionOutputFeature from JSON data */
  AnalyzeDataDescriptionOutputFeature.fromJson(core.Map json) {
    if (json.containsKey("numeric")) {
      numeric = new AnalyzeDataDescriptionOutputFeatureNumeric.fromJson(json["numeric"]);
    }
    if (json.containsKey("text")) {
      text = json["text"].map((textItem) => new AnalyzeDataDescriptionOutputFeatureText.fromJson(textItem)).toList();
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionOutputFeature */
  core.Map toJson() {
    var output = new core.Map();

    if (numeric != null) {
      output["numeric"] = numeric.toJson();
    }
    if (text != null) {
      output["text"] = text.map((textItem) => textItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionOutputFeature */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of the output values in the data set. */
class AnalyzeDataDescriptionOutputFeatureNumeric {

  /** Number of numeric output values in the data set. */
  core.int count;

  /** Mean of the output values in the data set. */
  core.num mean;

  /** Variance of the output values in the data set. */
  core.num variance;

  /** Create new AnalyzeDataDescriptionOutputFeatureNumeric from JSON data */
  AnalyzeDataDescriptionOutputFeatureNumeric.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("mean")) {
      mean = json["mean"];
    }
    if (json.containsKey("variance")) {
      variance = json["variance"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionOutputFeatureNumeric */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (mean != null) {
      output["mean"] = mean;
    }
    if (variance != null) {
      output["variance"] = variance;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionOutputFeatureNumeric */
  core.String toString() => JSON.stringify(this.toJson());

}

class AnalyzeDataDescriptionOutputFeatureText {

  /** Number of times the output label occurred in the data set. */
  core.int count;

  /** The output label. */
  core.String value;

  /** Create new AnalyzeDataDescriptionOutputFeatureText from JSON data */
  AnalyzeDataDescriptionOutputFeatureText.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionOutputFeatureText */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionOutputFeatureText */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Description of the model. */
class AnalyzeModelDescription {

  /** An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes [Categorical models only]. */
  core.Map<core.String, core.Map<core.String, core.num>> confusionMatrix;

  /** A list of the confusion matrix row totals */
  core.Map<core.String, core.num> confusionMatrixRowTotals;

  /** Basic information about the model. */
  Training modelinfo;

  /** Create new AnalyzeModelDescription from JSON data */
  AnalyzeModelDescription.fromJson(core.Map json) {
    if (json.containsKey("confusionMatrix")) {
      confusionMatrix = _mapMap(json["confusionMatrix"], (confusionMatrixItem) => _mapMap(confusionMatrixItem));
    }
    if (json.containsKey("confusionMatrixRowTotals")) {
      confusionMatrixRowTotals = _mapMap(json["confusionMatrixRowTotals"]);
    }
    if (json.containsKey("modelinfo")) {
      modelinfo = new Training.fromJson(json["modelinfo"]);
    }
  }

  /** Create JSON Object for AnalyzeModelDescription */
  core.Map toJson() {
    var output = new core.Map();

    if (confusionMatrix != null) {
      output["confusionMatrix"] = _mapMap(confusionMatrix, (confusionMatrixItem) => _mapMap(confusionMatrixItem));
    }
    if (confusionMatrixRowTotals != null) {
      output["confusionMatrixRowTotals"] = _mapMap(confusionMatrixRowTotals);
    }
    if (modelinfo != null) {
      output["modelinfo"] = modelinfo.toJson();
    }

    return output;
  }

  /** Return String representation of AnalyzeModelDescription */
  core.String toString() => JSON.stringify(this.toJson());

}

class Input {

  /** Input to the model for a prediction */
  InputInput input;

  /** Create new Input from JSON data */
  Input.fromJson(core.Map json) {
    if (json.containsKey("input")) {
      input = new InputInput.fromJson(json["input"]);
    }
  }

  /** Create JSON Object for Input */
  core.Map toJson() {
    var output = new core.Map();

    if (input != null) {
      output["input"] = input.toJson();
    }

    return output;
  }

  /** Return String representation of Input */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Input to the model for a prediction */
class InputInput {

  /** A list of input features, these can be strings or doubles. */
  core.List<core.Object> csvInstance;

  /** Create new InputInput from JSON data */
  InputInput.fromJson(core.Map json) {
    if (json.containsKey("csvInstance")) {
      csvInstance = json["csvInstance"].toList();
    }
  }

  /** Create JSON Object for InputInput */
  core.Map toJson() {
    var output = new core.Map();

    if (csvInstance != null) {
      output["csvInstance"] = csvInstance.toList();
    }

    return output;
  }

  /** Return String representation of InputInput */
  core.String toString() => JSON.stringify(this.toJson());

}

class List {

  /** List of models. */
  core.List<Training> items;

  /** What kind of resource this is. */
  core.String kind;

  /** Pagination token to fetch the next page, if one exists. */
  core.String nextPageToken;

  /** A URL to re-request this resource. */
  core.String selfLink;

  /** Create new List from JSON data */
  List.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Training.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for List */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of List */
  core.String toString() => JSON.stringify(this.toJson());

}

class Output {

  /** The unique name for the predictive model. */
  core.String id;

  /** What kind of resource this is. */
  core.String kind;

  /** The most likely class label [Categorical models only]. */
  core.String outputLabel;

  /** A list of class labels with their estimated probabilities [Categorical models only]. */
  core.List<OutputOutputMulti> outputMulti;

  /** The estimated regression value [Regression models only]. */
  core.num outputValue;

  /** A URL to re-request this resource. */
  core.String selfLink;

  /** Create new Output from JSON data */
  Output.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("outputLabel")) {
      outputLabel = json["outputLabel"];
    }
    if (json.containsKey("outputMulti")) {
      outputMulti = json["outputMulti"].map((outputMultiItem) => new OutputOutputMulti.fromJson(outputMultiItem)).toList();
    }
    if (json.containsKey("outputValue")) {
      outputValue = json["outputValue"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Output */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (outputLabel != null) {
      output["outputLabel"] = outputLabel;
    }
    if (outputMulti != null) {
      output["outputMulti"] = outputMulti.map((outputMultiItem) => outputMultiItem.toJson()).toList();
    }
    if (outputValue != null) {
      output["outputValue"] = outputValue;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Output */
  core.String toString() => JSON.stringify(this.toJson());

}

class OutputOutputMulti {

  /** The class label. */
  core.String label;

  /** The probability of the class label. */
  core.num score;

  /** Create new OutputOutputMulti from JSON data */
  OutputOutputMulti.fromJson(core.Map json) {
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
  }

  /** Create JSON Object for OutputOutputMulti */
  core.Map toJson() {
    var output = new core.Map();

    if (label != null) {
      output["label"] = label;
    }
    if (score != null) {
      output["score"] = score;
    }

    return output;
  }

  /** Return String representation of OutputOutputMulti */
  core.String toString() => JSON.stringify(this.toJson());

}

class Training {

  /** Insert time of the model (as a RFC 3339 timestamp). */
  core.String created;

  /** The unique name for the predictive model. */
  core.String id;

  /** What kind of resource this is. */
  core.String kind;

  /** Model metadata. */
  TrainingModelInfo modelInfo;

  /** Type of predictive model (classification or regression) */
  core.String modelType;

  /** A URL to re-request this resource. */
  core.String selfLink;

  /** Google storage location of the training data file. */
  core.String storageDataLocation;

  /** Google storage location of the preprocessing pmml file. */
  core.String storagePMMLLocation;

  /** Google storage location of the pmml model file. */
  core.String storagePMMLModelLocation;

  /** Training completion time (as a RFC 3339 timestamp). */
  core.String trainingComplete;

  /** Instances to train model on. */
  core.List<TrainingTrainingInstances> trainingInstances;

  /** The current status of the training job. This can be one of following: RUNNING; DONE; ERROR; ERROR: TRAINING JOB NOT FOUND */
  core.String trainingStatus;

  /** A class weighting function, which allows the importance weights for class labels to be specified [Categorical models only]. */
  core.List<core.Map<core.String, core.num>> utility;

  /** Create new Training from JSON data */
  Training.fromJson(core.Map json) {
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modelInfo")) {
      modelInfo = new TrainingModelInfo.fromJson(json["modelInfo"]);
    }
    if (json.containsKey("modelType")) {
      modelType = json["modelType"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("storageDataLocation")) {
      storageDataLocation = json["storageDataLocation"];
    }
    if (json.containsKey("storagePMMLLocation")) {
      storagePMMLLocation = json["storagePMMLLocation"];
    }
    if (json.containsKey("storagePMMLModelLocation")) {
      storagePMMLModelLocation = json["storagePMMLModelLocation"];
    }
    if (json.containsKey("trainingComplete")) {
      trainingComplete = json["trainingComplete"];
    }
    if (json.containsKey("trainingInstances")) {
      trainingInstances = json["trainingInstances"].map((trainingInstancesItem) => new TrainingTrainingInstances.fromJson(trainingInstancesItem)).toList();
    }
    if (json.containsKey("trainingStatus")) {
      trainingStatus = json["trainingStatus"];
    }
    if (json.containsKey("utility")) {
      utility = json["utility"].map((utilityItem) => _mapMap(utilityItem)).toList();
    }
  }

  /** Create JSON Object for Training */
  core.Map toJson() {
    var output = new core.Map();

    if (created != null) {
      output["created"] = created;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (modelInfo != null) {
      output["modelInfo"] = modelInfo.toJson();
    }
    if (modelType != null) {
      output["modelType"] = modelType;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (storageDataLocation != null) {
      output["storageDataLocation"] = storageDataLocation;
    }
    if (storagePMMLLocation != null) {
      output["storagePMMLLocation"] = storagePMMLLocation;
    }
    if (storagePMMLModelLocation != null) {
      output["storagePMMLModelLocation"] = storagePMMLModelLocation;
    }
    if (trainingComplete != null) {
      output["trainingComplete"] = trainingComplete;
    }
    if (trainingInstances != null) {
      output["trainingInstances"] = trainingInstances.map((trainingInstancesItem) => trainingInstancesItem.toJson()).toList();
    }
    if (trainingStatus != null) {
      output["trainingStatus"] = trainingStatus;
    }
    if (utility != null) {
      output["utility"] = utility.map((utilityItem) => _mapMap(utilityItem)).toList();
    }

    return output;
  }

  /** Return String representation of Training */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Model metadata. */
class TrainingModelInfo {

  /** Estimated accuracy of model taking utility weights into account [Categorical models only]. */
  core.num classWeightedAccuracy;

  /** A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an estimate, based on the amount and quality of the training data, of the estimated prediction accuracy. You can use this is a guide to decide whether the results are accurate enough for your needs. This estimate will be more reliable if your real input data is similar to your training data [Categorical models only]. */
  core.num classificationAccuracy;

  /** An estimated mean squared error. The can be used to measure the quality of the predicted model [Regression models only]. */
  core.num meanSquaredError;

  /** Type of predictive model (CLASSIFICATION or REGRESSION) */
  core.String modelType;

  /** Number of valid data instances used in the trained model. */
  core.int numberInstances;

  /** Number of class labels in the trained model [Categorical models only]. */
  core.int numberLabels;

  /** Create new TrainingModelInfo from JSON data */
  TrainingModelInfo.fromJson(core.Map json) {
    if (json.containsKey("classWeightedAccuracy")) {
      classWeightedAccuracy = json["classWeightedAccuracy"];
    }
    if (json.containsKey("classificationAccuracy")) {
      classificationAccuracy = json["classificationAccuracy"];
    }
    if (json.containsKey("meanSquaredError")) {
      meanSquaredError = json["meanSquaredError"];
    }
    if (json.containsKey("modelType")) {
      modelType = json["modelType"];
    }
    if (json.containsKey("numberInstances")) {
      numberInstances = (json["numberInstances"] is core.String) ? core.int.parse(json["numberInstances"]) : json["numberInstances"];
    }
    if (json.containsKey("numberLabels")) {
      numberLabels = (json["numberLabels"] is core.String) ? core.int.parse(json["numberLabels"]) : json["numberLabels"];
    }
  }

  /** Create JSON Object for TrainingModelInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (classWeightedAccuracy != null) {
      output["classWeightedAccuracy"] = classWeightedAccuracy;
    }
    if (classificationAccuracy != null) {
      output["classificationAccuracy"] = classificationAccuracy;
    }
    if (meanSquaredError != null) {
      output["meanSquaredError"] = meanSquaredError;
    }
    if (modelType != null) {
      output["modelType"] = modelType;
    }
    if (numberInstances != null) {
      output["numberInstances"] = numberInstances;
    }
    if (numberLabels != null) {
      output["numberLabels"] = numberLabels;
    }

    return output;
  }

  /** Return String representation of TrainingModelInfo */
  core.String toString() => JSON.stringify(this.toJson());

}

class TrainingTrainingInstances {

  /** The input features for this instance */
  core.List<core.Object> csvInstance;

  /** The generic output value - could be regression or class label */
  core.String output;

  /** Create new TrainingTrainingInstances from JSON data */
  TrainingTrainingInstances.fromJson(core.Map json) {
    if (json.containsKey("csvInstance")) {
      csvInstance = json["csvInstance"].toList();
    }
    if (json.containsKey("output")) {
      output = json["output"];
    }
  }

  /** Create JSON Object for TrainingTrainingInstances */
  core.Map toJson() {
    var output = new core.Map();

    if (csvInstance != null) {
      output["csvInstance"] = csvInstance.toList();
    }
    if (output != null) {
      output["output"] = output;
    }

    return output;
  }

  /** Return String representation of TrainingTrainingInstances */
  core.String toString() => JSON.stringify(this.toJson());

}

class Update {

  /** The input features for this instance */
  core.List<core.Object> csvInstance;

  /** The class label of this instance */
  core.String label;

  /** The generic output value - could be regression value or class label */
  core.String output;

  /** Create new Update from JSON data */
  Update.fromJson(core.Map json) {
    if (json.containsKey("csvInstance")) {
      csvInstance = json["csvInstance"].toList();
    }
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("output")) {
      output = json["output"];
    }
  }

  /** Create JSON Object for Update */
  core.Map toJson() {
    var output = new core.Map();

    if (csvInstance != null) {
      output["csvInstance"] = csvInstance.toList();
    }
    if (label != null) {
      output["label"] = label;
    }
    if (output != null) {
      output["output"] = output;
    }

    return output;
  }

  /** Return String representation of Update */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
