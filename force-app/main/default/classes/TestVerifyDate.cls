@IsTest
private class TestVerifyDate {  

  @IsTest
  static void testTomorrow() {
    Date date1 = VerifyDate.CheckDates(System.today(),System.today().addDays(1));
    System.assertEquals(System.today().addDays(1),date1);
  }
}
