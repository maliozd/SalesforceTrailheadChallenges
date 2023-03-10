public with sharing class ContactAndLeadSearch {

    //SOSL 
    //SF Object Search Language
    
    public static List<List<SObject>> searchContactsAndLeads(String firstOrLastName){
     List<List<SObject>> searchList = [FIND :firstOrLastName IN ALL FIELDS
     RETURNING Contact(Name),Lead(Name)];
     return searchList;
    }
}