part of prediction_v1_5_api_client;

class Analyze {

  /** Description of the data the model was trained on. */
  AnalyzeDataDescription dataDescription;

  /** List of errors with the data. */
  List<AnalyzeErrors> errors;

  /** The unique name for the predictive model. */
  String id;

  /** What kind of resource this is. */
  String kind;

  /** Description of the model. */
  AnalyzeModelDescription modelDescription;

  /** A URL to re-request this resource. */
  String selfLink;

  /** Create new Analyze from JSON data */
  Analyze.fromJson(Map json) {
    if (json.containsKey("dataDescription")) {
      dataDescription = new AnalyzeDataDescription.fromJson(json["dataDescription"]);
    }
    if (json.containsKey("errors")) {
      errors = [];
      json["errors"].forEach((item) {
        errors.add(new AnalyzeErrors.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (dataDescription != null) {
      output["dataDescription"] = dataDescription.toJson();
    }
    if (errors != null) {
      output["errors"] = new List();
      errors.forEach((item) {
        output["errors"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

/** Description of the model. */
class AnalyzeModelDescription {

  /** An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes [Categorical models only]. */
  AnalyzeModelDescriptionConfusionMatrix confusionMatrix;

  /** A list of the confusion matrix row totals */
  AnalyzeModelDescriptionConfusionMatrixRowTotals confusionMatrixRowTotals;

  /** Basic information about the model. */
  Training modelinfo;

  /** Create new AnalyzeModelDescription from JSON data */
  AnalyzeModelDescription.fromJson(Map json) {
    if (json.containsKey("confusionMatrix")) {
      confusionMatrix = new AnalyzeModelDescriptionConfusionMatrix.fromJson(json["confusionMatrix"]);
    }
    if (json.containsKey("confusionMatrixRowTotals")) {
      confusionMatrixRowTotals = new AnalyzeModelDescriptionConfusionMatrixRowTotals.fromJson(json["confusionMatrixRowTotals"]);
    }
    if (json.containsKey("modelinfo")) {
      modelinfo = new Training.fromJson(json["modelinfo"]);
    }
  }

  /** Create JSON Object for AnalyzeModelDescription */
  Map toJson() {
    var output = new Map();

    if (confusionMatrix != null) {
      output["confusionMatrix"] = confusionMatrix.toJson();
    }
    if (confusionMatrixRowTotals != null) {
      output["confusionMatrixRowTotals"] = confusionMatrixRowTotals.toJson();
    }
    if (modelinfo != null) {
      output["modelinfo"] = modelinfo.toJson();
    }

    return output;
  }

  /** Return String representation of AnalyzeModelDescription */
  String toString() => JSON.stringify(this.toJson());

}

/** An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes [Categorical models only]. */
class AnalyzeModelDescriptionConfusionMatrix {

  /** Create new AnalyzeModelDescriptionConfusionMatrix from JSON data */
  AnalyzeModelDescriptionConfusionMatrix.fromJson(Map json) {
  }

  /** Create JSON Object for AnalyzeModelDescriptionConfusionMatrix */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of AnalyzeModelDescriptionConfusionMatrix */
  String toString() => JSON.stringify(this.toJson());

}

/** A list of the confusion matrix row totals */
class AnalyzeModelDescriptionConfusionMatrixRowTotals {

  /** Create new AnalyzeModelDescriptionConfusionMatrixRowTotals from JSON data */
  AnalyzeModelDescriptionConfusionMatrixRowTotals.fromJson(Map json) {
  }

  /** Create JSON Object for AnalyzeModelDescriptionConfusionMatrixRowTotals */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of AnalyzeModelDescriptionConfusionMatrixRowTotals */
  String toString() => JSON.stringify(this.toJson());

}

/** Description of the data the model was trained on. */
class AnalyzeDataDescription {

  /** Description of the input features in the data set. */
  List<AnalyzeDataDescriptionFeatures> features;

  /** Description of the output value or label. */
  AnalyzeDataDescriptionOutputFeature outputFeature;

  /** Create new AnalyzeDataDescription from JSON data */
  AnalyzeDataDescription.fromJson(Map json) {
    if (json.containsKey("features")) {
      features = [];
      json["features"].forEach((item) {
        features.add(new AnalyzeDataDescriptionFeatures.fromJson(item));
      });
    }
    if (json.containsKey("outputFeature")) {
      outputFeature = new AnalyzeDataDescriptionOutputFeature.fromJson(json["outputFeature"]);
    }
  }

  /** Create JSON Object for AnalyzeDataDescription */
  Map toJson() {
    var output = new Map();

    if (features != null) {
      output["features"] = new List();
      features.forEach((item) {
        output["features"].add(item.toJson());
      });
    }
    if (outputFeature != null) {
      output["outputFeature"] = outputFeature.toJson();
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescription */
  String toString() => JSON.stringify(this.toJson());

}

class AnalyzeDataDescriptionFeatures {

  /** Description of the categorical values of this feature. */
  AnalyzeDataDescriptionFeaturesCategorical categorical;

  /** The feature index. */
  String index;

  /** Description of the numeric values of this feature. */
  AnalyzeDataDescriptionFeaturesNumeric numeric;

  /** Description of multiple-word text values of this feature. */
  AnalyzeDataDescriptionFeaturesText text;

  /** Create new AnalyzeDataDescriptionFeatures from JSON data */
  AnalyzeDataDescriptionFeatures.fromJson(Map json) {
    if (json.containsKey("categorical")) {
      categorical = new AnalyzeDataDescriptionFeaturesCategorical.fromJson(json["categorical"]);
    }
    if (json.containsKey("index")) {
      index = json["index"];
    }
    if (json.containsKey("numeric")) {
      numeric = new AnalyzeDataDescriptionFeaturesNumeric.fromJson(json["numeric"]);
    }
    if (json.containsKey("text")) {
      text = new AnalyzeDataDescriptionFeaturesText.fromJson(json["text"]);
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeatures */
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Description of the categorical values of this feature. */
class AnalyzeDataDescriptionFeaturesCategorical {

  /** Number of categorical values for this feature in the data. */
  String count;

  /** List of all the categories for this feature in the data set. */
  List<AnalyzeDataDescriptionFeaturesCategoricalValues> values;

  /** Create new AnalyzeDataDescriptionFeaturesCategorical from JSON data */
  AnalyzeDataDescriptionFeaturesCategorical.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("values")) {
      values = [];
      json["values"].forEach((item) {
        values.add(new AnalyzeDataDescriptionFeaturesCategoricalValues.fromJson(item));
      });
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesCategorical */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (values != null) {
      output["values"] = new List();
      values.forEach((item) {
        output["values"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesCategorical */
  String toString() => JSON.stringify(this.toJson());

}

class AnalyzeDataDescriptionFeaturesCategoricalValues {

  /** Number of times this feature had this value. */
  String count;

  /** The category name. */
  String value;

  /** Create new AnalyzeDataDescriptionFeaturesCategoricalValues from JSON data */
  AnalyzeDataDescriptionFeaturesCategoricalValues.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesCategoricalValues */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesCategoricalValues */
  String toString() => JSON.stringify(this.toJson());

}

/** Description of the numeric values of this feature. */
class AnalyzeDataDescriptionFeaturesNumeric {

  /** Number of numeric values for this feature in the data set. */
  String count;

  /** Mean of the numeric values of this feature in the data set. */
  num mean;

  /** Variance of the numeric values of this feature in the data set. */
  num variance;

  /** Create new AnalyzeDataDescriptionFeaturesNumeric from JSON data */
  AnalyzeDataDescriptionFeaturesNumeric.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("mean")) {
      mean = json["mean"];
    }
    if (json.containsKey("variance")) {
      variance = json["variance"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesNumeric */
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Description of multiple-word text values of this feature. */
class AnalyzeDataDescriptionFeaturesText {

  /** Number of multiple-word text values for this feature. */
  String count;

  /** Create new AnalyzeDataDescriptionFeaturesText from JSON data */
  AnalyzeDataDescriptionFeaturesText.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionFeaturesText */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionFeaturesText */
  String toString() => JSON.stringify(this.toJson());

}

/** Description of the output value or label. */
class AnalyzeDataDescriptionOutputFeature {

  /** Description of the output values in the data set. */
  AnalyzeDataDescriptionOutputFeatureNumeric numeric;

  /** Description of the output labels in the data set. */
  List<AnalyzeDataDescriptionOutputFeatureText> text;

  /** Create new AnalyzeDataDescriptionOutputFeature from JSON data */
  AnalyzeDataDescriptionOutputFeature.fromJson(Map json) {
    if (json.containsKey("numeric")) {
      numeric = new AnalyzeDataDescriptionOutputFeatureNumeric.fromJson(json["numeric"]);
    }
    if (json.containsKey("text")) {
      text = [];
      json["text"].forEach((item) {
        text.add(new AnalyzeDataDescriptionOutputFeatureText.fromJson(item));
      });
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionOutputFeature */
  Map toJson() {
    var output = new Map();

    if (numeric != null) {
      output["numeric"] = numeric.toJson();
    }
    if (text != null) {
      output["text"] = new List();
      text.forEach((item) {
        output["text"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionOutputFeature */
  String toString() => JSON.stringify(this.toJson());

}

/** Description of the output values in the data set. */
class AnalyzeDataDescriptionOutputFeatureNumeric {

  /** Number of numeric output values in the data set. */
  String count;

  /** Mean of the output values in the data set. */
  num mean;

  /** Variance of the output values in the data set. */
  num variance;

  /** Create new AnalyzeDataDescriptionOutputFeatureNumeric from JSON data */
  AnalyzeDataDescriptionOutputFeatureNumeric.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("mean")) {
      mean = json["mean"];
    }
    if (json.containsKey("variance")) {
      variance = json["variance"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionOutputFeatureNumeric */
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class AnalyzeDataDescriptionOutputFeatureText {

  /** Number of times the output label occurred in the data set. */
  String count;

  /** The output label. */
  String value;

  /** Create new AnalyzeDataDescriptionOutputFeatureText from JSON data */
  AnalyzeDataDescriptionOutputFeatureText.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for AnalyzeDataDescriptionOutputFeatureText */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of AnalyzeDataDescriptionOutputFeatureText */
  String toString() => JSON.stringify(this.toJson());

}

class AnalyzeErrors {

  /** Create new AnalyzeErrors from JSON data */
  AnalyzeErrors.fromJson(Map json) {
  }

  /** Create JSON Object for AnalyzeErrors */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of AnalyzeErrors */
  String toString() => JSON.stringify(this.toJson());

}

class Input {

  /** Input to the model for a prediction */
  InputInput input;

  /** Create new Input from JSON data */
  Input.fromJson(Map json) {
    if (json.containsKey("input")) {
      input = new InputInput.fromJson(json["input"]);
    }
  }

  /** Create JSON Object for Input */
  Map toJson() {
    var output = new Map();

    if (input != null) {
      output["input"] = input.toJson();
    }

    return output;
  }

  /** Return String representation of Input */
  String toString() => JSON.stringify(this.toJson());

}

/** Input to the model for a prediction */
class InputInput {

  /** Create new InputInput from JSON data */
  InputInput.fromJson(Map json) {
  }

  /** Create JSON Object for InputInput */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of InputInput */
  String toString() => JSON.stringify(this.toJson());

}

class List {

  /** List of models. */
  List<Training> items;

  /** What kind of resource this is. */
  String kind;

  /** Pagination token to fetch the next page, if one exists. */
  String nextPageToken;

  /** A URL to re-request this resource. */
  String selfLink;

  /** Create new List from JSON data */
  List.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Training.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class Output {

  /** The unique name for the predictive model. */
  String id;

  /** What kind of resource this is. */
  String kind;

  /** The most likely class label [Categorical models only]. */
  String outputLabel;

  /** A list of class labels with their estimated probabilities [Categorical models only]. */
  List<OutputOutputMulti> outputMulti;

  /** The estimated regression value [Regression models only]. */
  num outputValue;

  /** A URL to re-request this resource. */
  String selfLink;

  /** Create new Output from JSON data */
  Output.fromJson(Map json) {
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
      outputMulti = [];
      json["outputMulti"].forEach((item) {
        outputMulti.add(new OutputOutputMulti.fromJson(item));
      });
    }
    if (json.containsKey("outputValue")) {
      outputValue = json["outputValue"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Output */
  Map toJson() {
    var output = new Map();

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
      output["outputMulti"] = new List();
      outputMulti.forEach((item) {
        output["outputMulti"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class OutputOutputMulti {

  /** The class label. */
  String label;

  /** The probability of the class label. */
  num score;

  /** Create new OutputOutputMulti from JSON data */
  OutputOutputMulti.fromJson(Map json) {
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
  }

  /** Create JSON Object for OutputOutputMulti */
  Map toJson() {
    var output = new Map();

    if (label != null) {
      output["label"] = label;
    }
    if (score != null) {
      output["score"] = score;
    }

    return output;
  }

  /** Return String representation of OutputOutputMulti */
  String toString() => JSON.stringify(this.toJson());

}

class Training {

  /** Insert time of the model (as a RFC 3339 timestamp). */
  String created;

  /** The unique name for the predictive model. */
  String id;

  /** What kind of resource this is. */
  String kind;

  /** Model metadata. */
  TrainingModelInfo modelInfo;

  /** Type of predictive model (classification or regression) */
  String modelType;

  /** A URL to re-request this resource. */
  String selfLink;

  /** Google storage location of the training data file. */
  String storageDataLocation;

  /** Google storage location of the preprocessing pmml file. */
  String storagePMMLLocation;

  /** Google storage location of the pmml model file. */
  String storagePMMLModelLocation;

  /** Training completion time (as a RFC 3339 timestamp). */
  String trainingComplete;

  /** Instances to train model on. */
  List<TrainingTrainingInstances> trainingInstances;

  /** The current status of the training job. This can be one of following: RUNNING; DONE; ERROR; ERROR: TRAINING JOB NOT FOUND */
  String trainingStatus;

  /** A class weighting function, which allows the importance weights for class labels to be specified [Categorical models only]. */
  List<TrainingUtility> utility;

  /** Create new Training from JSON data */
  Training.fromJson(Map json) {
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
      trainingInstances = [];
      json["trainingInstances"].forEach((item) {
        trainingInstances.add(new TrainingTrainingInstances.fromJson(item));
      });
    }
    if (json.containsKey("trainingStatus")) {
      trainingStatus = json["trainingStatus"];
    }
    if (json.containsKey("utility")) {
      utility = [];
      json["utility"].forEach((item) {
        utility.add(new TrainingUtility.fromJson(item));
      });
    }
  }

  /** Create JSON Object for Training */
  Map toJson() {
    var output = new Map();

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
      output["trainingInstances"] = new List();
      trainingInstances.forEach((item) {
        output["trainingInstances"].add(item.toJson());
      });
    }
    if (trainingStatus != null) {
      output["trainingStatus"] = trainingStatus;
    }
    if (utility != null) {
      output["utility"] = new List();
      utility.forEach((item) {
        output["utility"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of Training */
  String toString() => JSON.stringify(this.toJson());

}

/** Model metadata. */
class TrainingModelInfo {

  /** Estimated accuracy of model taking utility weights into account [Categorical models only]. */
  num classWeightedAccuracy;

  /** A number between 0.0 and 1.0, where 1.0 is 100% accurate. This is an estimate, based on the amount and quality of the training data, of the estimated prediction accuracy. You can use this is a guide to decide whether the results are accurate enough for your needs. This estimate will be more reliable if your real input data is similar to your training data [Categorical models only]. */
  num classificationAccuracy;

  /** An estimated mean squared error. The can be used to measure the quality of the predicted model [Regression models only]. */
  num meanSquaredError;

  /** Type of predictive model (CLASSIFICATION or REGRESSION) */
  String modelType;

  /** Number of valid data instances used in the trained model. */
  String numberInstances;

  /** Number of class labels in the trained model [Categorical models only]. */
  String numberLabels;

  /** Create new TrainingModelInfo from JSON data */
  TrainingModelInfo.fromJson(Map json) {
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
      numberInstances = json["numberInstances"];
    }
    if (json.containsKey("numberLabels")) {
      numberLabels = json["numberLabels"];
    }
  }

  /** Create JSON Object for TrainingModelInfo */
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Class label (string). */
class TrainingUtility {

  /** Create new TrainingUtility from JSON data */
  TrainingUtility.fromJson(Map json) {
  }

  /** Create JSON Object for TrainingUtility */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of TrainingUtility */
  String toString() => JSON.stringify(this.toJson());

}

class TrainingTrainingInstances {

  /** The generic output value - could be regression or class label */
  String output;

  /** Create new TrainingTrainingInstances from JSON data */
  TrainingTrainingInstances.fromJson(Map json) {
    if (json.containsKey("output")) {
      output = json["output"];
    }
  }

  /** Create JSON Object for TrainingTrainingInstances */
  Map toJson() {
    var output = new Map();

    if (output != null) {
      output["output"] = output;
    }

    return output;
  }

  /** Return String representation of TrainingTrainingInstances */
  String toString() => JSON.stringify(this.toJson());

}

class Update {

  /** The class label of this instance */
  String label;

  /** The generic output value - could be regression value or class label */
  String output;

  /** Create new Update from JSON data */
  Update.fromJson(Map json) {
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("output")) {
      output = json["output"];
    }
  }

  /** Create JSON Object for Update */
  Map toJson() {
    var output = new Map();

    if (label != null) {
      output["label"] = label;
    }
    if (output != null) {
      output["output"] = output;
    }

    return output;
  }

  /** Return String representation of Update */
  String toString() => JSON.stringify(this.toJson());

}

