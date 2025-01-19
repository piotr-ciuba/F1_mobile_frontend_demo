class Endpoints {
  String get _f1BaseUrl => 'http://api.jolpi.ca/ergast/f1';

  String get f1Races => '$_f1BaseUrl/races';
  String get f1Status => '$_f1BaseUrl/status';
  String get f1Seasons => '$_f1BaseUrl/seasons';
  String get f1Drivers => '$_f1BaseUrl/drivers';
  String get f1Results => '$_f1BaseUrl/results';
  String get f1Circuits => '$_f1BaseUrl/circuits';
  String get f1Constructors => '$_f1BaseUrl/constructors';
}
