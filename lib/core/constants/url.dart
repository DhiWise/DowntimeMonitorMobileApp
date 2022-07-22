class Url {
  /*
  static String postman = "https://status.postman.com/api/v2/status.json";

  static String slack = "https://status.slack.com/api/v2.0.0/current";

  static String amazon = "https://status.aws.amazon.com/currentevents.json";

  static String clickup = "https://status.clickup.com/";

  static String keka = "https://status.keka.com/";

  static String canny = "https://status.canny.io";

  static String hubspot = "https://status.hubspot.com/api/v2/status.json";

  static String hotjar = "https://status.hotjar.com/api/v2/status.json";

  static String mixpanel = "https://www.mixpanelstatus.com/api/v2/status.json";

  static String hoppscotch = "https://status.hoppscotch.io/";

  static String vercel = "https://www.vercel-status.com/api/v2/status.json";

  static String github = "https://www.githubstatus.com/api/v2/status.json";

  static String gitlab = "https://status.gitlab.com/";

  static String figma = "https://status.figma.com/api/v2/status.json";

  static String discord = "https://discordstatus.com/api/v2/status.json";
*/

  Map<String, dynamic> _toMap() {
    return {
      'postman': "https://status.postman.com/api/v2/status.json",
      'slack': "https://status.slack.com/api/v2.0.0/current",
      'amazon': "https://status.aws.amazon.com/currentevents.json",
      'clickup': "https://status.clickup.com/",
      'keka': "https://status.keka.com/",
      'canny': "https://status.canny.io",
      'hubspot': "https://status.hubspot.com/api/v2/status.json",
      'hotjar': "https://status.hotjar.com/api/v2/status.json",
      'mixpanel': "https://www.mixpanelstatus.com/api/v2/status.json",
      'hoppscotch': "https://status.hoppscotch.io/",
      'vercel': "https://www.vercel-status.com/api/v2/status.json",
      'github': "https://www.githubstatus.com/api/v2/status.json",
      'gitlab': "https://status.gitlab.com/",
      'figma': "https://status.figma.com/api/v2/status.json",
      'discord': "https://discordstatus.com/api/v2/status.json"
    };
  }

  dynamic get(String propertyName) {
    var _mapRep = _toMap();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    return "";
  }
}
