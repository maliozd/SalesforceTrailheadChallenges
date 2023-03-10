public with sharing class ContactSearch {
    //SOQL
    //SF Object Query Language
    public static List<Contact> searchForContacts(String lastName, String postalCode){
     List<Contact> contactList = [SELECT Id, Name FROM Contact WHERE LastName = :lastName AND MailingPostalCode = :postalCode ];    
     return contactList;
    }
}