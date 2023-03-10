public with sharing class AccountUtility {
    public AccountUtility() {}

    public static void viewAnnualRevenue()
    {
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
    }
}