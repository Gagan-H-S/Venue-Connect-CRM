@isTest
public class BookingTriggerHandlerTest {

    @testSetup
    static void setupTestData() {
        // Create a sample Contact
        Contact c = new Contact(FirstName='John', LastName='Doe', Email='john@example.com');
        insert c;

        // Create a sample Venue
        Venue__c v = new Venue__c(Name='Hall A', Capacity__c=100, Location__c='Bangalore');
        insert v;
    }

    static testMethod void testBeforeInsertTrigger() {
        // Fetch test data
        Contact c = [SELECT Id FROM Contact LIMIT 1];
        Venue__c v = [SELECT Id FROM Venue__c LIMIT 1];

        // Create new booking
        Booking__c b = new Booking__c(
            Name='Booking Test 1',
            Customer__c = c.Id,
            Venue__c = v.Id,
            Booking_Amount__c = 2000,
            Number_of_Guests__c = 4
        );

        Test.startTest();
        insert b;
        Test.stopTest();

        Booking__c insertedBooking = [SELECT Status__c FROM Booking__c WHERE Id = :b.Id];
        System.assertEquals('Pending', insertedBooking.Status__c);
    }

    static testMethod void testAfterUpdateTrigger() {
        // Fetch inserted booking
        Booking__c b = [SELECT Id, Status__c FROM Booking__c LIMIT 1];
        b.Status__c = 'Confirmed';

        Test.startTest();
        update b;
        Test.stopTest();

        Booking__c updatedBooking = [SELECT Status__c FROM Booking__c WHERE Id = :b.Id];
        System.assertEquals('Confirmed', updatedBooking.Status__c);
    }
}
