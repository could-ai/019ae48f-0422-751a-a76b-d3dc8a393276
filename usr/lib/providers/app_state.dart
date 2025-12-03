import 'package:flutter/material.dart';
import '../models/data_models.dart';

class AppState extends ChangeNotifier {
  // Mock Data for Pool Events
  final List<Event> _events = [
    Event(
      id: '1',
      title: 'Summer Splash Pool Party',
      description: 'Join us for the biggest pool party of the summer! DJ, drinks, and fun.',
      date: DateTime.now().add(const Duration(days: 2)),
      price: 25.00,
      location: 'Grand Hotel Pool, Miami',
      imageUrl: 'https://images.unsplash.com/photo-1576013551627-0cc20b96c2a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Event(
      id: '2',
      title: 'Night Swim & Chill',
      description: 'Relaxing evening swim with ambient music and cocktails.',
      date: DateTime.now().add(const Duration(days: 5)),
      price: 15.00,
      location: 'City Center Rooftop Pool',
      imageUrl: 'https://images.unsplash.com/photo-1519331379826-f9478558d136?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Event(
      id: '3',
      title: 'Family Fun Day',
      description: 'Bring the kids! Slides, games, and snacks for the whole family.',
      date: DateTime.now().add(const Duration(days: 10)),
      price: 10.00,
      location: 'Community Aquatic Center',
      imageUrl: 'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  final List<Ticket> _myTickets = [];

  List<Event> get events => _events;
  List<Ticket> get myTickets => _myTickets;

  void purchaseTicket(Event event, int quantity) {
    final newTicket = Ticket(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      eventId: event.id,
      eventTitle: event.title,
      purchaseDate: DateTime.now(),
      quantity: quantity,
      totalPrice: event.price * quantity,
      qrCodeData: 'TICKET-${event.id}-${DateTime.now().millisecondsSinceEpoch}',
    );
    
    _myTickets.add(newTicket);
    notifyListeners();
  }
}
