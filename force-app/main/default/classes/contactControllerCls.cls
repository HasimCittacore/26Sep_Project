public class contactControllerCls {
    @AuraEnabled
    public static List<Contact> getContacts(String recId){
        List<Contact> contacts =  
            [SELECT Id,Name, Phone, AccountId, Email, Description FROM Contact
             WHERE AccountId =: recId ];
        return contacts;
    }

    public static String FootballWC(){
        return "Countdown Started";
    }

    public static String CricketWC(){
        return "India will win the T20 world cup";
    }

    public static String Opinion(){
      return "People expect Ronaldo or Messi to win the FWC 2022"   
    }
    
    public static String Opinion2(){
      return "People expect Virat to win the CWC 2022"   
    }

    public static String WorldCup(){
        return "Let the best team wins";
    }

    public static String Close(){
        return "Closing the case";
    }
    
    public static String Meet_U_nxtYear(){
        return "Lets have a new champion of the way";
    }
}
