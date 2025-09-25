trigger BookingTrigger on Booking__c (before insert, after update) {
    if(Trigger.isBefore && Trigger.isInsert) {
        BookingTriggerHandler.beforeInsert(Trigger.new);
    }

    if(Trigger.isAfter && Trigger.isUpdate) {
        BookingTriggerHandler.afterUpdate(Trigger.new, Trigger.oldMap);
    }
}
