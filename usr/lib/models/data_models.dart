class Event {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final double price;
  final String imageUrl;
  final String location;

  Event({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.price,
    required this.imageUrl,
    required this.location,
  });
}

class Ticket {
  final String id;
  final String eventId;
  final String eventTitle;
  final DateTime purchaseDate;
  final int quantity;
  final double totalPrice;
  final String qrCodeData; // Mock QR code data

  Ticket({
    required this.id,
    required this.eventId,
    required this.eventTitle,
    required this.purchaseDate,
    required this.quantity,
    required this.totalPrice,
    required this.qrCodeData,
  });
}
