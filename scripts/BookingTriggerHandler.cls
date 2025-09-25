public class BookingTriggerHandler {

    // Method for before insert
    public static void beforeInsert(List<Booking__c> newBookings) {
        for(Booking__c b : newBookings) {
            // Set default status if empty
            if(b.Status__c == null) {
                b.Status__c = 'Pending';
            }
        }
    }

    // Method for after update
    public static void afterUpdate(List<Booking__c> updatedBookings, Map<Id, Booking__c> oldMap) {
        for(Booking__c b : updatedBookings) {
            Booking__c oldBooking = oldMap.get(b.Id);

            // Example: send email if status changed to Confirmed
            if(b.Status__c == 'Confirmed' && oldBooking.Status__c != 'Confirmed') {
                // Call Email Alert / logic here
                System.debug('Booking confirmed: ' + b.Name);
            }
        }
    }
}
