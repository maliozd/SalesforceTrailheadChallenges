public with sharing class AccountHandler {
    
    public static void insertAccount(Integer numberOfAccounts){
    List<Account> addAccounts = new List<Account>();
    Integer n = 0;
    while (n < numberOfAccounts){
        Account acc = new Account();
        acc.Name = 'Acme Inc N'+n;
        acc.AccountNumber = 'A00n' + n;
        addAccounts.add(acc);
        n = n+1;
    }
        insert addAccounts;
 }
}