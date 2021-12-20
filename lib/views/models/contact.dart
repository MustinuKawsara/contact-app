





class Contact {
  String name = "";
  String number = "";
  String id = "";
  String email = "";
  String proFileImage = "";

  Contact(
    {this.name = "",
    required this.number,
    this.email = "",
    this.proFileImage = "",
    required this.id}
  );
}