public with sharing class AccountUtility {
    public AccountUtility() {}

    public static void viewAnnualRevenue()
    {
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
        
        for(Integer i = 0; i < accountsList.size(); i++){
           String acctRev = accountsList[i].Name + ':' + accountsList[i].AnnualRevenue;
            system.debug(acctRev);
        }

    }
}