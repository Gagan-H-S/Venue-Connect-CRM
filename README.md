# Venue Connect CRM

## Project Overview
**Venue Connect CRM** is a Salesforce-based application designed to manage venue bookings, customers, and related operations efficiently. The system streamlines the process of creating bookings, tracking payment and status, and maintaining records of venues and clients.

This project demonstrates core **Salesforce Admin and Developer skills**, including custom objects, triggers, automation, Lightning pages, and basic integration setups.

---

## Features

### Admin Features
- Custom objects: `Booking`, `Venue`, `Customer/Contact`
- Record Types & Page Layouts for easy data entry
- Validation rules to ensure data integrity
- Home page and record page customization in Lightning

### Developer Features
- Apex triggers for booking logic:
  - Default **Status** set to `Pending` on insert
  - After-update triggers for notifications or related updates
- Apex handler classes following **Trigger Design Pattern**
- Named Credentials and Remote Site Settings for external API callouts
- Test classes with ≥75% code coverage

### Automation
- Basic trigger-based automation for bookings
- Workflow rules and process triggers for record updates

### Data Management
- Import sample booking and venue data via **Data Import Wizard**
- Data backup via **Data Export**

### Reporting & Dashboards
- Booking report with key details (status, venue, number of guests)
- Dashboard with charts showing bookings per venue or per status

---

## Installation / Setup
1. **Salesforce Org**: Create a Developer Org (free)
2. **Objects & Fields**: Use the included schema for `Booking`, `Venue`, and `Contact`
3. **Triggers & Classes**: Deploy `BookingTrigger` and `BookingTriggerHandler`
4. **Lightning Pages**: Customize Record Pages and Home Page using Lightning App Builder
5. **Data Import**: Use `Booking_Sample.csv` and `Venue_Sample.csv` to import sample data
6. **Remote Site & Named Credential**:  
   - Setup Remote Site: `https://jsonplaceholder.typicode.com`  
   - Named Credential: `MyAPICredential` → allows test API callouts

---

## Sample Data
Included CSV files for easy demo:  
- `Booking_Sample.csv` → sample booking records  
- `Venue_Sample.csv` → sample venue records

---

## Testing
- Apex Test Class: `BookingTriggerHandlerTest`
- Ensures triggers work correctly on insert and update
- Minimum 75% code coverage

---

## Project Phases Covered
- **Phase 1–6**: Org setup, data modeling, process automation, UI customization
- **Phase 7**: Integration (Remote Site & Named Credential)
- **Phase 8**: Data management (Import & Export)
- **Phase 9**: Basic reporting and dashboards
- **Phase 10**: Demo-ready application with sample data

---

## Usage
1. Open **BookingApp** in Lightning
2. Create new bookings → triggers automatically set default fields
3. View bookings in **List View** or **Booking Record Page**
4. Dashboard shows booking summary per venue

---

## Technologies
- Salesforce Lightning Experience
- Apex Classes & Triggers
- Data Import Wizard / Data Export
- Lightning App Builder
- Named Credentials & Remote Site Settings

---

## Future Enhancements
- Integration with real payment gateways using OAuth authentication
- Automated notifications for booking confirmations
- Advanced reporting with dynamic dashboards
- External system integration using REST/SOAP APIs

---
