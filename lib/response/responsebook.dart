import '';

class ResponseBook {
  bool? success;
  String? token;
  ResponseBook({this.success, this.token});
  factory ResponseBook.fromJson(Map<String, dynamic> json) {
    return ResponseBook(
      success: json['success'],
      token: json['token'],
    );
  }
}
