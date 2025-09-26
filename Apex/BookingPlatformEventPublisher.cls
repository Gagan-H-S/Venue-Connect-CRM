public class BookingPlatformEventPublisher {
    public static void publishBookingConfirmed(Id bookingId) {
        Booking_Event__e evt = new Booking_Event__e(
            BookingId__c = bookingId,
            Status__c = 'Confirmed'
        );
        Database.SaveResult result = EventBus.publish(evt);
        System.debug('Event published: ' + result.isSuccess());
    }
}
