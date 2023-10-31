class Chat {
  int id;
  String name;
  String icon;
  bool isGroup;
  String? time;
  String? currentMessage;
  String status;
  bool select = false;

  Chat({
    required this.id,
    required this.name,
    required this.icon,
    required this.isGroup,
    this.time,
    this.currentMessage,
    required this.status,
    this.select = false,
  });
}
