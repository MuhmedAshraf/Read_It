class EndPoint{
  static const String authBaseUrl = "https://food-api-omega.vercel.app/api/v1/";
  static const String signIn = "${authBaseUrl}user/signin";
  static const String signUp = "${authBaseUrl}user/signup";
  static  String getUserDataEndPoint(id){
    return "${authBaseUrl}user/get-user/$id";
  }
  static const String delete = "${authBaseUrl}user/delete";
  static const String logOut = "${authBaseUrl}user/logout";
  static const String update = "${authBaseUrl}user/update";
  //*****************************************************************************************bookEndPoint
  static const String bookBaseUrl = "https://api.nytimes.com/svc/books/v3/lists/";
  static const String getAllBooks = "${bookBaseUrl}full-overview.json";
  static const String getBestSellers = "${bookBaseUrl}current/hardcover-fiction.json";
  static const Map<String,dynamic> apiKey ={"api-key":"1YXowQLJGBSfpzJOAT5hvYwGfK9BLwDU"};
}


class ApiKeys{
  static String status = "status";
  static String errMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String confirmPassword = "confirmPassword";
  static String token = "token";
  static String message = "message";
  static String id = "id";
  static String name = "name";
  static String phone = "phone";
  static String profilePic = "profilePic";
  static String location = "location";
}