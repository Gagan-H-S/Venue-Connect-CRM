public with sharing class BookingController {
    @AuraEnabled(cacheable=true)
    public static List<Booking__c> getBookings() {
        return [SELECT Id, Name, Status__c, Number_of_Guests__c FROM Booking__c ORDER BY CreatedDate DESC LIMIT 10];
    }
}
