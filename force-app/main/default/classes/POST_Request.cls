public with sharing class POST_Request {


    public void sendPostRequest(){
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:CustomRestAPI');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        String accToSend = JSON.serialize(wrapAccount(generateAccount()));
        System.debug('accToSend: ' + accToSend);
        request.setBody(accToSend);

        HttpResponse response = http.send(request);
        System.debug('RESPONSE: ' + response.getBody());




    }


   private Account generateAccount(){
       Account acc = new Account();
       acc.Name = 'Test Post Account';
       acc.Phone = '6387298209';
       return acc;
   }



    private AccountWrapper wrapAccount(Account acct){
        AccountWrapper wrapper = new AccountWrapper();
        wrapper.acct = acct;
        return wrapper;

    }
    
}