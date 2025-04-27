@RestResource(urlMapping='/AccountDML/*')
global with sharing class RestService {

    @HttpPost
    global static String insertAccount(Account acct){
        insert acct;
        return acct.Id;
    }
   
}