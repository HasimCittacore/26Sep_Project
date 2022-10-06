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

    public static String WorldCup(){
        return "Let the best wins";
    }
}