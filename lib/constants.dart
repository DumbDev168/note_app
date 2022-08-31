class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = false;
const kLiveBaseApiUrl = "http://10.0.2.2:8000";
const kTestBaseApiUrl = "https://noteapp-api-test.herokuapp.com";

const kIconButtonSplashRadius = 25.0;
