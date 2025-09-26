public with sharing class PaymentService {
    @future(callout=true)
    public static void sendPayment(String bookingId, Decimal amount) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:PaymentAPI/payments');
        req.setMethod('POST');
        req.setHeader('Content-Type', 'application/json');
        req.setBody('{"bookingId":"'+bookingId+'","amount":'+amount+',"currency":"USD"}');

        Http http = new Http();
        HttpResponse res = http.send(req);
        System.debug('Payment Response: ' + res.getBody());
    }
}
