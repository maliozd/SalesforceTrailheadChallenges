@isTest
public class TestVerifyDate {
   private static Date SetEndOfMonthDate(Date date1) {
    Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
    Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
    return lastDay;
  }
    
    
   static testMethod void testTomorrow() {
    Date date1 = VerifyDate.CheckDates(System.today(),System.today().addDays(1));
    System.assertEquals(System.today().addDays(1),date1);
  }
   static testMethod void testThirtyDays() {
    Date date2 = VerifyDate.CheckDates(System.today(),System.today().addDays(30));
    System.assertEquals(SetEndOfMonthDate(System.today()),date2);
  }
    static testMethod void testFourtyDays(){
        Date date3 = VerifyDate.CheckDates(System.today(),System.today().addDays(40));
        System.assertEquals(SetEndOfMonthDate(System.today()),date3);
    }   
    static testMethod void testPastDays(){
        Date date4 = VerifyDate.CheckDates(System.today(), System.today().addDays(-60));        
        System.assertEquals(SetEndOfMonthDate(System.today()),date4);
    }
}