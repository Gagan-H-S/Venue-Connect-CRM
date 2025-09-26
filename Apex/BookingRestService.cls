@RestResource(urlMapping='/bookings/*')
global with sharing class BookingRestService {
    @HttpGet
    global static Booking__c doGet() {
        RestRequest req = RestContext.request;
        String bookingId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        return [SELECT Id, Name, Venue__c, Status__c FROM Booking__c WHERE Id = :bookingId LIMIT 1];
    }

    @HttpPost
    global static String doPost(String bookingJson) {
        Booking__c b = (Booking__c)JSON.deserialize(bookingJson, Booking__c.class);
        insert b;
        return b.Id;
    }
}
