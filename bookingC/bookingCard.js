import { LightningElement, api, wire } from 'lwc';
import getBookings from '@salesforce/apex/BookingController.getBookings';

export default class BookingCard extends LightningElement {
    @api recordId; // Optional if you want single booking
    bookings;

    @wire(getBookings)
    wiredBookings({ error, data }) {
        if (data) {
            this.bookings = data;
        } else if (error) {
            console.error(error);
        }
    }
}
